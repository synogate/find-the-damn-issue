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

	Vector<Bit> uio_in_simu;

	virtual void generate()
	{
		generateUsbFunction();
		scl::BitBangEngine bitbang;

		{
			scl::TransactionalFifo<scl::usb::Function::StreamData> host2uartFifo{ 16 };
			usb.attachRxFifo(host2uartFifo, 1 << 1);
			scl::TransactionalFifo<scl::usb::Function::StreamData> uart2hostFifo{ 16 };
			usb.attachTxFifo(uart2hostFifo, 1 << 1);

			scl::RvStream<BVec> command = scl::strm::pop(host2uartFifo)
				.transform([](const scl::usb::Function::StreamData& in) { return (BVec)in.data; });

			bitbang.generate(move(command), 16)
				.transform([](const BVec& d) { return scl::usb::Function::StreamData{ .data = (UInt)d, .endPoint = 1 }; })
				| scl::strm::push(uart2hostFifo);

			host2uartFifo.generate();
			uart2hostFifo.generate();
		}

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
		UInt uio_in = 8_b;
		UInt uio_out = ConstUInt(8_b);
		UInt uio_oe = ConstUInt(8_b);
		for (size_t i = 0; i < 6; ++i)
		{
			bitbang.io(i).in = uio_in[i];
			uio_out[i] = bitbang.io(i).iobufOut();
			uio_oe[i] = bitbang.io(i).iobufEnable();
		}
		pinIn(uio_in, "uio_in");
		pinOut(uio_out, "uio_out");
		pinOut(uio_oe, "uio_oe");
		
		uio_in_simu.resize(8);
		for (size_t i = 0; i < 6; ++i)
			uio_in_simu[i] = tristatePin(uio_oe[i], uio_out[i], { .simulationOnlyPin = true });
		uio_in.simulationOverride(pack(uio_in_simu));
	
		UInt ui_in = 8_b;
		UInt uo_out = ConstUInt(8_b);
		for (size_t i = 0; i < 8; ++i)
		{
			bitbang.io(i + 8).in = ui_in[i];
			uo_out[i] = bitbang.io(i + 8).out;
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
			simu(circuit.uio_in_simu[2]) = '1';

			co_await OnClk(sysclk);
			//co_await controller.testWindowsDeviceDiscovery();
			co_await controller.controlSetConfiguration(1);

			std::vector<uint8_t> commands = {
				// spi setup
				0x80, 0x00, 0x00, 0x82, 0x00, 0x00, 0x9e, 0x00, 0x00, 0x8d, 0x85, 0x86, 0x00, 0x00, 0x80, 0x0b, 0x0b, 0x86, 0x02, 0x00,
				// spi transfer, send a command byte and receive 8 bytes of data
				0xc1, 0x13, 0x07, 0xdf, 0xc1, 0x23, 0x3f, 0xc9,
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
};

int main()
{
	FindTheDamnIssueGenerator circuit;
	circuit.generate();
    return 0;
}

