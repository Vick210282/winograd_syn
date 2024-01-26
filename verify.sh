#!/bin/bash

# 在执行脚本之前source vcs.cshrc
source /usr/cad/synopsys/CIC/vcs.cshrc

# 设置要执行的命令
COMMAND_PREFIX="vcs ./WC_2_3.v ./tb_2_3.v -R -full64 -debug_access+all +v2k"

# 设置要访问的目录列表
DIRECTORIES=("wc_2_3" "wc_2_4" "wc_2_5")  # 添加更多目录或根据需要修改

# 设置循环次数，例如 10 次
NUM_ITERATIONS=10

# 循环执行命令
for ((i=1; i<=$NUM_ITERATIONS; i++)); do
  for DIR in "${DIRECTORIES[@]}"; do
    echo "Running iteration $i in directory $DIR..."
    # 切换到目录并执行命令
    (cd "./win_verilog/$DIR" && $COMMAND_PREFIX && cd ../../)
  done

  # 提示用户输入 "y" 继续执行下一轮
  read -p "Press 'y' to continue, or any other key to exit: " response
  if [[ "$response" != "y" ]]; then
    echo "Exiting script."
    exit 0
  fi
done

echo "Script execution completed."
