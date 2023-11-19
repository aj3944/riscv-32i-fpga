#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2023.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Nov 19 03:38:40 EST 2023
# SW Build 3865809 on Sun May  7 15:04:56 MDT 2023
#
# IP Build 3864474 on Sun May  7 20:36:21 MDT 2023
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim riscv321rv6463_tb_behav -key {Behavioral:sim_1:Functional:riscv321rv6463_tb} -tclbatch riscv321rv6463_tb.tcl -log simulate.log"
xsim riscv321rv6463_tb_behav -key {Behavioral:sim_1:Functional:riscv321rv6463_tb} -tclbatch riscv321rv6463_tb.tcl -log simulate.log

