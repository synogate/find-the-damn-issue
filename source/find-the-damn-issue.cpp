// YAML-CPP warnings
#pragma warning(disable: 4251)
#pragma warning(disable: 4275)

#include <gatery/export/vhdl/VHDLExport.h>
#include <gatery/scl/arch/intel/ALTPLL.h>
#include <gatery/scl/arch/intel/IntelDevice.h>
#include <gatery/scl/io/usb/CommunicationsDeviceClass.h>
#include <gatery/scl/io/usb/Function.h>
#include <gatery/scl/io/usb/GpioPhy.h>
#include <gatery/scl/io/usb/SimuPhy.h>
#include <gatery/scl/io/uart.h>
#include <gatery/scl/io/BitBangEngine.h>
#include <gatery/scl/synthesisTools/IntelQuartus.h>
#include <gatery/simulation/ReferenceSimulator.h>
#include <gatery/simulation/waveformFormats/VCDSink.h>

#include <iostream>

using namespace gtry;

struct FindTheDamnIssue
{
	scl::usb::Function usb;
	scl::usb::SimuBusBase* usbSimuPhy;

	enum class OperatingMode { UART, BitBang };
	Reg<Enum<OperatingMode>> operatingMode{ OperatingMode::UART };

	UInt uio_in = 8_b;
	UInt uio_out = 8_b;
	UInt uio_oe = 8_b;
	UInt ui_in = 8_b;
	UInt uo_out = 8_b;

	Vector<Bit> uio_in_simu;
	Bit dtr, rts;
	Bit tx, rx;

	virtual void generate()
	{
		operatingMode.setName("operatingMode");

		UInt baudRate = BitWidth::last(hlim::ceil(ClockScope::getClk().absoluteFrequency()));

		enum class SetupClassRequest { none, SET_LINE_CODING };
		Reg<Enum<SetupClassRequest>> setupClassRequest{ SetupClassRequest::none };

		usb.addClassSetupHandler([&](const scl::usb::SetupPacket& setup) -> Bit {
			Bit handled = '0';
			setupClassRequest = SetupClassRequest::none;

			// SET_LINE_CODING
			IF(setup.request == 0x20 & setup.requestType == 0x21 & setup.wIndex == 0)
			{
				setupClassRequest = SetupClassRequest::SET_LINE_CODING;
				handled = '1';
			}

			// SET_LINE_CONTROL_STATE
			IF(setup.request == 0x22 & setup.requestType == 0x21 & setup.wIndex == 0)
			{
				dtr = setup.wValue[0];
				rts = setup.wValue[1];
				handled = '1';
			}

			return handled;
		});

		usb.addClassDataHandler([&](const BVec& packet) {
			IF(setupClassRequest.current() == SetupClassRequest::SET_LINE_CODING)
			{
				baudRate = (UInt)packet.lower(baudRate.width());
				BVec parity = packet(5 * 8, 8_b);
				HCL_NAMED(parity);

				operatingMode = OperatingMode::UART;
				IF(baudRate == 57600 & parity == 2)
					operatingMode = OperatingMode::BitBang;
			}
		});

		dtr = reg(dtr, '0');	HCL_NAMED(dtr);
		rts = reg(rts, '0');	HCL_NAMED(rts);
		baudRate = reg(baudRate, 115'200);
		HCL_NAMED(baudRate);

		generateUsbFunction();
		scl::BitBangEngine bitbang;
		bitbang
			.ioMosi(1)
			.ioMiso(2)
			.ioClk(3)
			.ioTms(4)
			.ioStopClock(5);

		// attach usb rx to demux for operating mode dependent forwarding
		scl::StreamDemux command{ usb.rxEndPointFifo(1, 16), operatingMode.current().numericalValue() };

		// uart tx
		tx = command.out(size_t(OperatingMode::UART)) | scl::uartTx(baudRate);
		HCL_NAMED(tx);
			
		// bitbang engine
		scl::RvStream<BVec> bitbangOut = bitbang.generate(command.out(size_t(OperatingMode::BitBang)), 16);
		HCL_NAMED(bitbangOut);

		// uart rx
		HCL_NAMED(rx);
		scl::RvStream<BVec> uartOut = 
			scl::uartRx(rx, baudRate)
			.add(scl::Ready{});
		HCL_NAMED(uartOut);
		rx = '1';

		// arbitrate and send over usb
		usb.txEndPointFifo(1, 16, scl::strm::arbitrateWithPolicy(
			scl::ArbiterPolicyExtern{ operatingMode.current().numericalValue() }, 
			move(uartOut),
			move(bitbangOut)
		));

		pin(bitbang);
	}

protected:
	virtual void generateUsbFunction()
	{
		// setup usb descriptor
		scl::usb::Descriptor& desc = usb.descriptor();

		desc.add(scl::usb::DeviceDescriptor{
			.Class = scl::usb::InterfaceAssociationDescriptor::DevClass,
			.SubClass = scl::usb::InterfaceAssociationDescriptor::DevSubClass,
			.Protocol = scl::usb::InterfaceAssociationDescriptor::DevProtocol,
			.ManufacturerName = desc.allocateStringIndex(L"Synogate"),
			.ProductName = desc.allocateStringIndex(L"FindTheDamnIssue")
		});

		desc.add(scl::usb::ConfigurationDescriptor{});
		desc.add(scl::usb::InterfaceAssociationDescriptor{});
		scl::usb::virtualCOMsetup(usb, 0, 1);
		desc.add(scl::usb::InterfaceAssociationDescriptor{});
		scl::usb::virtualCOMsetup(usb, 1, 2);

		desc.changeMaxPacketSize(8);
		desc.finalize();

		usbSimuPhy = &usb.setup<scl::usb::GpioPhy>();
	}

	virtual void pin(scl::BitBangEngine& bitbang)
	{
		uio_out = ConstUInt(8_b);
		uio_oe = ConstUInt(8_b);
		for (size_t i = 0; i < 6; ++i)
		{
			bitbang.io(i).in = uio_in[i];
			uio_out[i] = bitbang.io(i).iobufOut();
			uio_oe[i] = bitbang.io(i).iobufEnable();
		}

		IF(operatingMode.current() == OperatingMode::UART)
		{
			uio_out[1] = tx;
			uio_oe = 0b0000'0010; // tx out, others in
		}
		rx = uio_in[2];

		pinIn(uio_in, "uio_in");
		pinOut(uio_out, "uio_out");
		pinOut(uio_oe, "uio_oe");
			
		uo_out = ConstUInt(8_b);
		for (size_t i = 0; i < 8; ++i)
		{
			bitbang.io(i + 8).in = ui_in[i];
			uo_out[i] = bitbang.io(i + 8).out;
		}

		IF(operatingMode.current() == OperatingMode::UART)
		{
			uo_out[0] = dtr;
			uo_out[1] = rts;
		}

		pinIn(ui_in, "ui_in");
		pinOut(uo_out, "uo_out");
	}
};

class FindTheDamnIssueGenerator
{
public:
	void generate()
	{
		std::cout << "generate " << m_configName << std::endl;
		selectDevice();

		Clock sysclk = generateClock();
		ClockScope clkScp(sysclk);

		FindTheDamnIssue circuit;
		circuit.generate();

		std::cout << "process netlist" << std::endl;
		design.postprocess();

		std::cout << "export" << std::endl;
		exportVHDL();
		
		std::cout << "simulate" << std::endl;
		simulate(sysclk, circuit);

		std::cout << "done" << std::endl;
	}

protected:

	virtual void exportVHDL()
	{
		vhdl::VHDLExport vhdl(m_configName + "/" + m_configName + ".vhd");
		vhdl.targetSynthesisTool(new IntelQuartus());
		vhdl(DesignScope::get()->getCircuit());
	}

	virtual void simulate(Clock& sysclk, FindTheDamnIssue& circuit)
	{
		sim::ReferenceSimulator simulator;
		scl::usb::SimuHostController controller(*circuit.usbSimuPhy, circuit.usb.descriptor());

		simulator.addSimulationProcess([&]() -> SimProcess {
			bool mirrorTx2Rx = true;
			fork([&]() -> SimProcess {
				// a simple tristate pin simulation
				sim::DefaultBitVectorState in;
				in.resize(8);

				while (true)
				{
					co_await AfterClk(sysclk);
					in = simu(circuit.uio_out);
					*in.data(sim::DefaultConfig::DEFINED) &= simu(circuit.uio_oe);

					if (mirrorTx2Rx)
					{
						in.copyRange(2, in, 1, 1);
					}
					else
					{
						// always drive MISO high for test reading FF
						in.set(sim::DefaultConfig::DEFINED, 2);
						in.set(sim::DefaultConfig::VALUE, 2);
					}
					simu(circuit.uio_in) = in;
				}
			});

			co_await OnClk(sysclk);
			//co_await controller.testWindowsDeviceDiscovery();
			co_await controller.controlSetConfiguration(1);

			if (m_simulateUart)
			{
				sim::SimulationContext::current()->onDebugMessage(nullptr, "set fast baud rate");
				std::vector<uint8_t> fastBaudCommand = { 0x80, 0x84, 0x1E, 0x00,  /* stop */ 0x00, /* parity */ 0x00, /* data bits */ 0x08 };
				co_await controller.controlTransferOut({
					.direction = scl::usb::EndpointDirection::out,
					.type = scl::usb::SetupType::class_,
					.recipient = scl::usb::SetupRecipient::interface,
					.request = 0x20, //  SET_LINE_CODING
					.length = uint16_t(fastBaudCommand.size())
				}, as_bytes(std::span(fastBaudCommand)));

				sim::SimulationContext::current()->onDebugMessage(nullptr, "send uart data");
				std::vector<uint8_t> uart_data = { 'T' };
				co_await controller.transferOutBatch(1, as_bytes(std::span(uart_data)));

				sim::SimulationContext::current()->onDebugMessage(nullptr, "set RTS=1, DTR=0 through SET_LINE_CONTROL_STATE");
				co_await controller.controlTransferOut({
					.direction = scl::usb::EndpointDirection::out,
					.type = scl::usb::SetupType::class_,
					.recipient = scl::usb::SetupRecipient::interface,
					.request = 0x22, // SET_LINE_CONTROL_STATE
					.value = 0b10, // RTS=1, DTR=0
				});

				sim::SimulationContext::current()->onDebugMessage(nullptr, "receive uart data");
				std::vector<std::byte> uartRxData = co_await controller.transferInBatch(1, 64);
				HCL_ASSERT(uartRxData.size() == 1);
				HCL_ASSERT(uartRxData[0] == std::byte('T'));
			}

			if (m_simulateBitbang)
			{
				mirrorTx2Rx = false;

				sim::SimulationContext::current()->onDebugMessage(nullptr, "set operating mode to bitbang");
				std::vector<uint8_t> opModeBitbangCommand = { 0x00, 0xE1, 0x00, 0x00,  /* stop */ 0x00, /* parity */ 0x02, /* data bits */ 0x08 };
				co_await controller.controlTransferOut({
					.direction = scl::usb::EndpointDirection::out,
					.type = scl::usb::SetupType::class_,
					.recipient = scl::usb::SetupRecipient::interface,
					.request = 0x20, //  SET_LINE_CODING
					.length = uint16_t(opModeBitbangCommand.size())
				}, as_bytes(std::span(opModeBitbangCommand)));

				sim::SimulationContext::current()->onDebugMessage(nullptr, "spi test");
				std::vector<uint8_t> commands = {
					// spi setup
					0x80, 0b1011, 0b1011, // set pin direction and initial state
					0x86, 0x02, 0x00, // set clock rate
					// spi transfer, send a command byte and receive 8 bytes of data
					0xc8, 0x13, 0x07, 0xdf, 0xc1, 0x23, 0x3f, 0xcb,
				};
				co_await controller.transferOutBatch(1, std::as_bytes(std::span(commands)));

				std::vector<std::byte> result;
				while (result.size() < 8)
				{
					std::vector<std::byte> packet = co_await controller.transferInBatch(1, 64);
					for (size_t i = 0; i < packet.size(); ++i)
						HCL_ASSERT((packet[i] == std::byte(0xFF)))
					result.insert(result.end(), packet.begin(), packet.end());
				}
				HCL_ASSERT(result.size() == 8);
			}

			for (size_t i = 0; i < 128; ++i)
				co_await OnClk(sysclk);

			simulator.abort();
		});


		sim::VCDSink vcd(DesignScope::get()->getCircuit(), simulator, (m_configName + ".vcd").c_str());
		vcd.addAllPins();
		vcd.addAllNamedSignals();
		vcd.addAllTaps();

		simulator.compileProgram(DesignScope::get()->getCircuit());
		simulator.powerOn();
		simulator.advance(hlim::ClockRational({ 1, 1'000 }));
		simulator.commitState();
	}

	virtual void selectDevice()
	{
		auto device = std::make_unique<scl::IntelDevice>();
		device->setupDevice("10M50DAF672I6");
		DesignScope::get()->setTargetTechnology(std::move(device));

	}

	virtual Clock generateClock()
	{
		Clock clk50{ ClockConfig{
			.absoluteFrequency = 50'000'000,
			.name = "CLK50M",
			.resetType = ClockConfig::ResetType::NONE
		} };

		auto* pll2 = DesignScope::get()->createNode<scl::arch::intel::ALTPLL>();
		pll2->setClock(0, clk50);
		return pll2->generateOutClock(0, 24, 25, 50, 0);
	}

protected:
	DesignScope design;
	std::string m_configName = "find-the-damn-issue_deca";
	bool m_simulateUart = true;
	bool m_simulateBitbang = true;
};

int main()
{
	FindTheDamnIssueGenerator circuit;
	circuit.generate();
	return 0;
}

