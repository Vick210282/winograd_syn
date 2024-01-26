set_operating_conditions -min_library fsa0m_a_generic_core_ff1p98vm40c -min BCCOM  -max_library fsa0m_a_generic_core_ss1p62v125c -max WCCOM
set_driving_cell -library fsa0m_a_t33_generic_io_ss1p62v125c -lib_cell XMC -pin {O} [all_inputs]
set_load [load_of "fsa0m_a_t33_generic_io_ss1p62v125c/YA2GSC/I"] [all_outputs]
create_clock -period 10  [get_ports clk]  -waveform {0 5}
set_dont_touch_network  [get_clocks clk]
set_fix_hold  [get_clocks clk]
set_clock_uncertainty  0.1  [get_clocks clk]
set_clock_latency  0.5  [get_clocks clk]
set_input_transition  0.5  [all_inputs]
set_clock_transition  0.1  [all_clocks]
set_ideal_network  [get_ports clk]
set_ideal_network  [get_ports rst]
set_max_fanout 6 [all_inputs]
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
set_dont_touch [get_cell ipad_*]
set_dont_touch [get_cell opad_*]
check_timing
set_max_area 0
set_max_capacitance 0.5 [all_inputs]
set_max_fanout 2 [all_inputs]
set_max_transition 0.5 [all_inputs]
check_timing
current_design [get_designs CHIP]
compile -boundary_optimization