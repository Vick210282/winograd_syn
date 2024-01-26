set_svf CHIP.svf

# Import Design
read_verilog ./WC.v
read_verilog ./CHIP.v
current_design [get_designs CHIP]
link

source -echo -verbose ./WC.sdc
