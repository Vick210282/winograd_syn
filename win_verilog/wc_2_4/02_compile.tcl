set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_dont_touch [get_cell ipad*]
set_dont_touch [get_cell opad*]

set_structure -timing true

compile -map_effort high
compile -map_effort high -inc
