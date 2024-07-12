ghdl -a --std=08 .\find_the_damn_issue*.vhd
ghdl -e --std=08 -fsynopsys find_the_damn_issue_sky130_tb
ghdl -r --std=08 -fsynopsys find_the_damn_issue_sky130_tb --vcd=ghdl.vcd --ieee-asserts=disable
ghdl synth --std=08 -fsynopsys --out=verilog top | Out-File -FilePath "find_the_damn_issue_sky130.v" -Encoding ascii
cp .\find_the_damn_issue_sky130.v ..\src\

iverilog -o iverilog_test -s find_the_damn_issue_sky130_tb -g2005-sv find_the_damn_issue_sky130_tb.v find_the_damn_issue_sky130.v
vvp -n iverilog_test
