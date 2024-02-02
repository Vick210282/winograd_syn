cd ./win_verilog/wc_2_3

dc_shell -f 00_run.tcl | tee run.log
dc_shell exit

echo "wc23 Design Compiler Done..."

cd ../wc_2_4

dc_shell -f 00_run.tcl | tee run.log
dc_shell exit

echo "wc24 Design Compiler Done..."