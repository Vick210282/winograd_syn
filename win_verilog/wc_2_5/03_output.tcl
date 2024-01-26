current_design [get_designs CHIP]
#remove_unconnected_ports -blast_buses [get_cells -hierarchical *]
set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule
write -format verilog -hierarchy -output "chip_syn.v"
write -format ddc   -hierarchy -output "chip_syn.ddc"
write_sdc chip_syn.sdc
write_sdf -version 1.0 -context verilog -load_delay net chip_syn.sdf
report_area > area.log
report_timing > timing.log
report_power > power.log
report_qor   >  CHIP_syn.qor