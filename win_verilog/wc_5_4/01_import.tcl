read_file -format verilog "./TOP.v"
read_file -format verilog "./CHIP.v"
current_design [get_designs CHIP]
source .synopsys_dc.setup
link