# winograd_syn
# Synthesis verilog code
執行/win_syn/win_verilog_syn.ipynb
# Synthesis testbench
執行/win_tb_syn/win_tb_syn.ipynb
可順便生成VCS腳本
# Synthesis io setup
執行/io_syn/io_syn.ipynb
也將DC腳本和setup檔放入各電路路徑

# verify verilog by vcs
sh run_vcs.sh 

# DC synthesis

cd ./win_verilog/wc_2_3
dc_shell
source 00_run.tcl