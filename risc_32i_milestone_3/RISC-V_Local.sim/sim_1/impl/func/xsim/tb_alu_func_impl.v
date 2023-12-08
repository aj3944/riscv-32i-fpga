// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec  7 15:31:57 2023
// Host        : DESKTOP-P0GG95G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/User/RISC-V_Local/RISC-V_Local.sim/sim_1/impl/func/xsim/tb_alu_func_impl.v
// Design      : alu
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "6ed6e0bd" *) 
(* NotValidForBitStream *)
module alu
   (control,
    in_1,
    in_2,
    out);
  input [3:0]control;
  input [31:0]in_1;
  input [31:0]in_2;
  output [31:0]out;

  wire [3:0]control;
  wire [3:0]control_IBUF;
  wire [31:0]in_1;
  wire [31:0]in_1_IBUF;
  wire [31:0]in_2;
  wire [31:0]in_2_IBUF;
  wire [31:0]out;
  wire [27:20]out2;
  wire [31:0]out_OBUF;
  wire \out_OBUF[0]_inst_i_10_n_0 ;
  wire \out_OBUF[0]_inst_i_11_n_0 ;
  wire \out_OBUF[0]_inst_i_12_n_0 ;
  wire \out_OBUF[0]_inst_i_13_n_0 ;
  wire \out_OBUF[0]_inst_i_14_n_0 ;
  wire \out_OBUF[0]_inst_i_15_n_0 ;
  wire \out_OBUF[0]_inst_i_16_n_0 ;
  wire \out_OBUF[0]_inst_i_17_n_0 ;
  wire \out_OBUF[0]_inst_i_18_n_0 ;
  wire \out_OBUF[0]_inst_i_19_n_0 ;
  wire \out_OBUF[0]_inst_i_20_n_0 ;
  wire \out_OBUF[0]_inst_i_21_n_0 ;
  wire \out_OBUF[0]_inst_i_22_n_0 ;
  wire \out_OBUF[0]_inst_i_23_n_0 ;
  wire \out_OBUF[0]_inst_i_24_n_0 ;
  wire \out_OBUF[0]_inst_i_25_n_0 ;
  wire \out_OBUF[0]_inst_i_26_n_0 ;
  wire \out_OBUF[0]_inst_i_27_n_0 ;
  wire \out_OBUF[0]_inst_i_28_n_0 ;
  wire \out_OBUF[0]_inst_i_29_n_0 ;
  wire \out_OBUF[0]_inst_i_2_n_0 ;
  wire \out_OBUF[0]_inst_i_30_n_0 ;
  wire \out_OBUF[0]_inst_i_31_n_0 ;
  wire \out_OBUF[0]_inst_i_32_n_0 ;
  wire \out_OBUF[0]_inst_i_33_n_0 ;
  wire \out_OBUF[0]_inst_i_34_n_0 ;
  wire \out_OBUF[0]_inst_i_35_n_0 ;
  wire \out_OBUF[0]_inst_i_36_n_0 ;
  wire \out_OBUF[0]_inst_i_37_n_0 ;
  wire \out_OBUF[0]_inst_i_38_n_0 ;
  wire \out_OBUF[0]_inst_i_39_n_0 ;
  wire \out_OBUF[0]_inst_i_3_n_0 ;
  wire \out_OBUF[0]_inst_i_40_n_0 ;
  wire \out_OBUF[0]_inst_i_41_n_0 ;
  wire \out_OBUF[0]_inst_i_42_n_0 ;
  wire \out_OBUF[0]_inst_i_43_n_0 ;
  wire \out_OBUF[0]_inst_i_44_n_0 ;
  wire \out_OBUF[0]_inst_i_45_n_0 ;
  wire \out_OBUF[0]_inst_i_46_n_0 ;
  wire \out_OBUF[0]_inst_i_47_n_0 ;
  wire \out_OBUF[0]_inst_i_48_n_0 ;
  wire \out_OBUF[0]_inst_i_49_n_0 ;
  wire \out_OBUF[0]_inst_i_50_n_0 ;
  wire \out_OBUF[0]_inst_i_51_n_0 ;
  wire \out_OBUF[0]_inst_i_52_n_0 ;
  wire \out_OBUF[0]_inst_i_53_n_0 ;
  wire \out_OBUF[0]_inst_i_54_n_0 ;
  wire \out_OBUF[0]_inst_i_55_n_0 ;
  wire \out_OBUF[0]_inst_i_56_n_0 ;
  wire \out_OBUF[0]_inst_i_57_n_0 ;
  wire \out_OBUF[0]_inst_i_58_n_0 ;
  wire \out_OBUF[0]_inst_i_59_n_0 ;
  wire \out_OBUF[0]_inst_i_60_n_0 ;
  wire \out_OBUF[0]_inst_i_61_n_0 ;
  wire \out_OBUF[0]_inst_i_62_n_0 ;
  wire \out_OBUF[0]_inst_i_63_n_0 ;
  wire \out_OBUF[0]_inst_i_64_n_0 ;
  wire \out_OBUF[0]_inst_i_65_n_0 ;
  wire \out_OBUF[0]_inst_i_66_n_0 ;
  wire \out_OBUF[0]_inst_i_67_n_0 ;
  wire \out_OBUF[0]_inst_i_68_n_0 ;
  wire \out_OBUF[0]_inst_i_69_n_0 ;
  wire \out_OBUF[0]_inst_i_6_n_0 ;
  wire \out_OBUF[0]_inst_i_70_n_0 ;
  wire \out_OBUF[0]_inst_i_71_n_0 ;
  wire \out_OBUF[0]_inst_i_72_n_0 ;
  wire \out_OBUF[0]_inst_i_73_n_0 ;
  wire \out_OBUF[0]_inst_i_74_n_0 ;
  wire \out_OBUF[0]_inst_i_75_n_0 ;
  wire \out_OBUF[0]_inst_i_76_n_0 ;
  wire \out_OBUF[0]_inst_i_77_n_0 ;
  wire \out_OBUF[0]_inst_i_78_n_0 ;
  wire \out_OBUF[0]_inst_i_7_n_0 ;
  wire \out_OBUF[0]_inst_i_8_n_0 ;
  wire \out_OBUF[0]_inst_i_9_n_0 ;
  wire \out_OBUF[10]_inst_i_2_n_0 ;
  wire \out_OBUF[10]_inst_i_3_n_0 ;
  wire \out_OBUF[10]_inst_i_4_n_0 ;
  wire \out_OBUF[10]_inst_i_5_n_0 ;
  wire \out_OBUF[10]_inst_i_6_n_0 ;
  wire \out_OBUF[10]_inst_i_7_n_0 ;
  wire \out_OBUF[10]_inst_i_8_n_0 ;
  wire \out_OBUF[11]_inst_i_10_n_0 ;
  wire \out_OBUF[11]_inst_i_11_n_0 ;
  wire \out_OBUF[11]_inst_i_12_n_0 ;
  wire \out_OBUF[11]_inst_i_13_n_0 ;
  wire \out_OBUF[11]_inst_i_2_n_0 ;
  wire \out_OBUF[11]_inst_i_3_n_0 ;
  wire \out_OBUF[11]_inst_i_4_n_0 ;
  wire \out_OBUF[11]_inst_i_5_n_0 ;
  wire \out_OBUF[11]_inst_i_6_n_0 ;
  wire \out_OBUF[11]_inst_i_6_n_4 ;
  wire \out_OBUF[11]_inst_i_6_n_5 ;
  wire \out_OBUF[11]_inst_i_6_n_6 ;
  wire \out_OBUF[11]_inst_i_6_n_7 ;
  wire \out_OBUF[11]_inst_i_7_n_0 ;
  wire \out_OBUF[11]_inst_i_8_n_0 ;
  wire \out_OBUF[11]_inst_i_9_n_0 ;
  wire \out_OBUF[12]_inst_i_2_n_0 ;
  wire \out_OBUF[12]_inst_i_3_n_0 ;
  wire \out_OBUF[12]_inst_i_4_n_0 ;
  wire \out_OBUF[12]_inst_i_5_n_0 ;
  wire \out_OBUF[12]_inst_i_6_n_0 ;
  wire \out_OBUF[12]_inst_i_7_n_0 ;
  wire \out_OBUF[12]_inst_i_8_n_0 ;
  wire \out_OBUF[13]_inst_i_2_n_0 ;
  wire \out_OBUF[13]_inst_i_3_n_0 ;
  wire \out_OBUF[13]_inst_i_4_n_0 ;
  wire \out_OBUF[13]_inst_i_5_n_0 ;
  wire \out_OBUF[13]_inst_i_6_n_0 ;
  wire \out_OBUF[13]_inst_i_7_n_0 ;
  wire \out_OBUF[13]_inst_i_8_n_0 ;
  wire \out_OBUF[14]_inst_i_2_n_0 ;
  wire \out_OBUF[14]_inst_i_3_n_0 ;
  wire \out_OBUF[14]_inst_i_4_n_0 ;
  wire \out_OBUF[14]_inst_i_5_n_0 ;
  wire \out_OBUF[14]_inst_i_6_n_0 ;
  wire \out_OBUF[14]_inst_i_7_n_0 ;
  wire \out_OBUF[14]_inst_i_8_n_0 ;
  wire \out_OBUF[15]_inst_i_10_n_0 ;
  wire \out_OBUF[15]_inst_i_11_n_0 ;
  wire \out_OBUF[15]_inst_i_12_n_0 ;
  wire \out_OBUF[15]_inst_i_13_n_0 ;
  wire \out_OBUF[15]_inst_i_2_n_0 ;
  wire \out_OBUF[15]_inst_i_3_n_0 ;
  wire \out_OBUF[15]_inst_i_4_n_0 ;
  wire \out_OBUF[15]_inst_i_5_n_0 ;
  wire \out_OBUF[15]_inst_i_6_n_0 ;
  wire \out_OBUF[15]_inst_i_6_n_4 ;
  wire \out_OBUF[15]_inst_i_6_n_5 ;
  wire \out_OBUF[15]_inst_i_6_n_6 ;
  wire \out_OBUF[15]_inst_i_6_n_7 ;
  wire \out_OBUF[15]_inst_i_7_n_0 ;
  wire \out_OBUF[15]_inst_i_8_n_0 ;
  wire \out_OBUF[15]_inst_i_9_n_0 ;
  wire \out_OBUF[16]_inst_i_2_n_0 ;
  wire \out_OBUF[16]_inst_i_3_n_0 ;
  wire \out_OBUF[16]_inst_i_4_n_0 ;
  wire \out_OBUF[16]_inst_i_5_n_0 ;
  wire \out_OBUF[16]_inst_i_6_n_0 ;
  wire \out_OBUF[16]_inst_i_7_n_0 ;
  wire \out_OBUF[16]_inst_i_8_n_0 ;
  wire \out_OBUF[16]_inst_i_9_n_0 ;
  wire \out_OBUF[17]_inst_i_2_n_0 ;
  wire \out_OBUF[17]_inst_i_3_n_0 ;
  wire \out_OBUF[17]_inst_i_4_n_0 ;
  wire \out_OBUF[17]_inst_i_5_n_0 ;
  wire \out_OBUF[17]_inst_i_6_n_0 ;
  wire \out_OBUF[17]_inst_i_7_n_0 ;
  wire \out_OBUF[17]_inst_i_8_n_0 ;
  wire \out_OBUF[17]_inst_i_9_n_0 ;
  wire \out_OBUF[18]_inst_i_2_n_0 ;
  wire \out_OBUF[18]_inst_i_3_n_0 ;
  wire \out_OBUF[18]_inst_i_4_n_0 ;
  wire \out_OBUF[18]_inst_i_5_n_0 ;
  wire \out_OBUF[18]_inst_i_6_n_0 ;
  wire \out_OBUF[18]_inst_i_7_n_0 ;
  wire \out_OBUF[18]_inst_i_8_n_0 ;
  wire \out_OBUF[18]_inst_i_9_n_0 ;
  wire \out_OBUF[19]_inst_i_10_n_0 ;
  wire \out_OBUF[19]_inst_i_11_n_0 ;
  wire \out_OBUF[19]_inst_i_12_n_0 ;
  wire \out_OBUF[19]_inst_i_13_n_0 ;
  wire \out_OBUF[19]_inst_i_14_n_0 ;
  wire \out_OBUF[19]_inst_i_15_n_0 ;
  wire \out_OBUF[19]_inst_i_2_n_0 ;
  wire \out_OBUF[19]_inst_i_3_n_0 ;
  wire \out_OBUF[19]_inst_i_4_n_0 ;
  wire \out_OBUF[19]_inst_i_5_n_0 ;
  wire \out_OBUF[19]_inst_i_6_n_0 ;
  wire \out_OBUF[19]_inst_i_7_n_0 ;
  wire \out_OBUF[19]_inst_i_7_n_4 ;
  wire \out_OBUF[19]_inst_i_7_n_5 ;
  wire \out_OBUF[19]_inst_i_7_n_6 ;
  wire \out_OBUF[19]_inst_i_7_n_7 ;
  wire \out_OBUF[19]_inst_i_8_n_0 ;
  wire \out_OBUF[19]_inst_i_9_n_0 ;
  wire \out_OBUF[1]_inst_i_2_n_0 ;
  wire \out_OBUF[1]_inst_i_3_n_0 ;
  wire \out_OBUF[1]_inst_i_4_n_0 ;
  wire \out_OBUF[1]_inst_i_5_n_0 ;
  wire \out_OBUF[1]_inst_i_6_n_0 ;
  wire \out_OBUF[1]_inst_i_7_n_0 ;
  wire \out_OBUF[20]_inst_i_2_n_0 ;
  wire \out_OBUF[20]_inst_i_3_n_0 ;
  wire \out_OBUF[20]_inst_i_4_n_0 ;
  wire \out_OBUF[20]_inst_i_6_n_0 ;
  wire \out_OBUF[20]_inst_i_7_n_0 ;
  wire \out_OBUF[21]_inst_i_2_n_0 ;
  wire \out_OBUF[21]_inst_i_3_n_0 ;
  wire \out_OBUF[21]_inst_i_4_n_0 ;
  wire \out_OBUF[21]_inst_i_6_n_0 ;
  wire \out_OBUF[21]_inst_i_7_n_0 ;
  wire \out_OBUF[22]_inst_i_2_n_0 ;
  wire \out_OBUF[22]_inst_i_3_n_0 ;
  wire \out_OBUF[22]_inst_i_4_n_0 ;
  wire \out_OBUF[22]_inst_i_6_n_0 ;
  wire \out_OBUF[22]_inst_i_7_n_0 ;
  wire \out_OBUF[23]_inst_i_10_n_0 ;
  wire \out_OBUF[23]_inst_i_11_n_0 ;
  wire \out_OBUF[23]_inst_i_12_n_0 ;
  wire \out_OBUF[23]_inst_i_2_n_0 ;
  wire \out_OBUF[23]_inst_i_3_n_0 ;
  wire \out_OBUF[23]_inst_i_4_n_0 ;
  wire \out_OBUF[23]_inst_i_4_n_4 ;
  wire \out_OBUF[23]_inst_i_4_n_5 ;
  wire \out_OBUF[23]_inst_i_4_n_6 ;
  wire \out_OBUF[23]_inst_i_4_n_7 ;
  wire \out_OBUF[23]_inst_i_5_n_0 ;
  wire \out_OBUF[23]_inst_i_7_n_0 ;
  wire \out_OBUF[23]_inst_i_8_n_0 ;
  wire \out_OBUF[23]_inst_i_9_n_0 ;
  wire \out_OBUF[24]_inst_i_2_n_0 ;
  wire \out_OBUF[24]_inst_i_3_n_0 ;
  wire \out_OBUF[24]_inst_i_4_n_0 ;
  wire \out_OBUF[24]_inst_i_6_n_0 ;
  wire \out_OBUF[24]_inst_i_7_n_0 ;
  wire \out_OBUF[25]_inst_i_2_n_0 ;
  wire \out_OBUF[25]_inst_i_3_n_0 ;
  wire \out_OBUF[25]_inst_i_4_n_0 ;
  wire \out_OBUF[25]_inst_i_6_n_0 ;
  wire \out_OBUF[25]_inst_i_7_n_0 ;
  wire \out_OBUF[26]_inst_i_2_n_0 ;
  wire \out_OBUF[26]_inst_i_3_n_0 ;
  wire \out_OBUF[26]_inst_i_4_n_0 ;
  wire \out_OBUF[26]_inst_i_6_n_0 ;
  wire \out_OBUF[26]_inst_i_7_n_0 ;
  wire \out_OBUF[26]_inst_i_8_n_0 ;
  wire \out_OBUF[27]_inst_i_10_n_0 ;
  wire \out_OBUF[27]_inst_i_11_n_0 ;
  wire \out_OBUF[27]_inst_i_12_n_0 ;
  wire \out_OBUF[27]_inst_i_13_n_0 ;
  wire \out_OBUF[27]_inst_i_2_n_0 ;
  wire \out_OBUF[27]_inst_i_3_n_0 ;
  wire \out_OBUF[27]_inst_i_4_n_0 ;
  wire \out_OBUF[27]_inst_i_4_n_4 ;
  wire \out_OBUF[27]_inst_i_4_n_5 ;
  wire \out_OBUF[27]_inst_i_4_n_6 ;
  wire \out_OBUF[27]_inst_i_4_n_7 ;
  wire \out_OBUF[27]_inst_i_5_n_0 ;
  wire \out_OBUF[27]_inst_i_7_n_0 ;
  wire \out_OBUF[27]_inst_i_8_n_0 ;
  wire \out_OBUF[27]_inst_i_9_n_0 ;
  wire \out_OBUF[28]_inst_i_2_n_0 ;
  wire \out_OBUF[28]_inst_i_3_n_0 ;
  wire \out_OBUF[28]_inst_i_4_n_0 ;
  wire \out_OBUF[28]_inst_i_5_n_0 ;
  wire \out_OBUF[28]_inst_i_6_n_0 ;
  wire \out_OBUF[28]_inst_i_7_n_0 ;
  wire \out_OBUF[29]_inst_i_2_n_0 ;
  wire \out_OBUF[29]_inst_i_3_n_0 ;
  wire \out_OBUF[29]_inst_i_4_n_0 ;
  wire \out_OBUF[29]_inst_i_5_n_0 ;
  wire \out_OBUF[29]_inst_i_6_n_0 ;
  wire \out_OBUF[29]_inst_i_7_n_0 ;
  wire \out_OBUF[2]_inst_i_2_n_0 ;
  wire \out_OBUF[2]_inst_i_3_n_0 ;
  wire \out_OBUF[2]_inst_i_4_n_0 ;
  wire \out_OBUF[2]_inst_i_5_n_0 ;
  wire \out_OBUF[2]_inst_i_6_n_0 ;
  wire \out_OBUF[2]_inst_i_7_n_0 ;
  wire \out_OBUF[30]_inst_i_2_n_0 ;
  wire \out_OBUF[30]_inst_i_3_n_0 ;
  wire \out_OBUF[30]_inst_i_4_n_0 ;
  wire \out_OBUF[30]_inst_i_5_n_0 ;
  wire \out_OBUF[30]_inst_i_6_n_0 ;
  wire \out_OBUF[30]_inst_i_7_n_0 ;
  wire \out_OBUF[31]_inst_i_10_n_0 ;
  wire \out_OBUF[31]_inst_i_11_n_0 ;
  wire \out_OBUF[31]_inst_i_12_n_0 ;
  wire \out_OBUF[31]_inst_i_13_n_0 ;
  wire \out_OBUF[31]_inst_i_14_n_0 ;
  wire \out_OBUF[31]_inst_i_15_n_0 ;
  wire \out_OBUF[31]_inst_i_16_n_0 ;
  wire \out_OBUF[31]_inst_i_17_n_0 ;
  wire \out_OBUF[31]_inst_i_18_n_0 ;
  wire \out_OBUF[31]_inst_i_19_n_0 ;
  wire \out_OBUF[31]_inst_i_2_n_0 ;
  wire \out_OBUF[31]_inst_i_3_n_0 ;
  wire \out_OBUF[31]_inst_i_4_n_4 ;
  wire \out_OBUF[31]_inst_i_4_n_5 ;
  wire \out_OBUF[31]_inst_i_4_n_6 ;
  wire \out_OBUF[31]_inst_i_4_n_7 ;
  wire \out_OBUF[31]_inst_i_5_n_0 ;
  wire \out_OBUF[31]_inst_i_6_n_0 ;
  wire \out_OBUF[31]_inst_i_7_n_0 ;
  wire \out_OBUF[31]_inst_i_8_n_0 ;
  wire \out_OBUF[31]_inst_i_9_n_0 ;
  wire \out_OBUF[3]_inst_i_10_n_0 ;
  wire \out_OBUF[3]_inst_i_11_n_0 ;
  wire \out_OBUF[3]_inst_i_2_n_0 ;
  wire \out_OBUF[3]_inst_i_3_n_0 ;
  wire \out_OBUF[3]_inst_i_4_n_0 ;
  wire \out_OBUF[3]_inst_i_5_n_0 ;
  wire \out_OBUF[3]_inst_i_6_n_0 ;
  wire \out_OBUF[3]_inst_i_6_n_4 ;
  wire \out_OBUF[3]_inst_i_6_n_5 ;
  wire \out_OBUF[3]_inst_i_6_n_6 ;
  wire \out_OBUF[3]_inst_i_6_n_7 ;
  wire \out_OBUF[3]_inst_i_7_n_0 ;
  wire \out_OBUF[3]_inst_i_8_n_0 ;
  wire \out_OBUF[3]_inst_i_9_n_0 ;
  wire \out_OBUF[4]_inst_i_2_n_0 ;
  wire \out_OBUF[4]_inst_i_3_n_0 ;
  wire \out_OBUF[4]_inst_i_4_n_0 ;
  wire \out_OBUF[4]_inst_i_5_n_0 ;
  wire \out_OBUF[4]_inst_i_6_n_0 ;
  wire \out_OBUF[4]_inst_i_7_n_0 ;
  wire \out_OBUF[5]_inst_i_2_n_0 ;
  wire \out_OBUF[5]_inst_i_3_n_0 ;
  wire \out_OBUF[5]_inst_i_4_n_0 ;
  wire \out_OBUF[5]_inst_i_5_n_0 ;
  wire \out_OBUF[5]_inst_i_6_n_0 ;
  wire \out_OBUF[5]_inst_i_7_n_0 ;
  wire \out_OBUF[6]_inst_i_2_n_0 ;
  wire \out_OBUF[6]_inst_i_3_n_0 ;
  wire \out_OBUF[6]_inst_i_4_n_0 ;
  wire \out_OBUF[6]_inst_i_5_n_0 ;
  wire \out_OBUF[6]_inst_i_6_n_0 ;
  wire \out_OBUF[6]_inst_i_7_n_0 ;
  wire \out_OBUF[7]_inst_i_10_n_0 ;
  wire \out_OBUF[7]_inst_i_11_n_0 ;
  wire \out_OBUF[7]_inst_i_12_n_0 ;
  wire \out_OBUF[7]_inst_i_13_n_0 ;
  wire \out_OBUF[7]_inst_i_2_n_0 ;
  wire \out_OBUF[7]_inst_i_3_n_0 ;
  wire \out_OBUF[7]_inst_i_4_n_0 ;
  wire \out_OBUF[7]_inst_i_5_n_0 ;
  wire \out_OBUF[7]_inst_i_6_n_0 ;
  wire \out_OBUF[7]_inst_i_6_n_4 ;
  wire \out_OBUF[7]_inst_i_6_n_5 ;
  wire \out_OBUF[7]_inst_i_6_n_6 ;
  wire \out_OBUF[7]_inst_i_6_n_7 ;
  wire \out_OBUF[7]_inst_i_7_n_0 ;
  wire \out_OBUF[7]_inst_i_8_n_0 ;
  wire \out_OBUF[7]_inst_i_9_n_0 ;
  wire \out_OBUF[8]_inst_i_2_n_0 ;
  wire \out_OBUF[8]_inst_i_3_n_0 ;
  wire \out_OBUF[8]_inst_i_4_n_0 ;
  wire \out_OBUF[8]_inst_i_5_n_0 ;
  wire \out_OBUF[8]_inst_i_6_n_0 ;
  wire \out_OBUF[8]_inst_i_7_n_0 ;
  wire \out_OBUF[8]_inst_i_8_n_0 ;
  wire \out_OBUF[9]_inst_i_2_n_0 ;
  wire \out_OBUF[9]_inst_i_3_n_0 ;
  wire \out_OBUF[9]_inst_i_4_n_0 ;
  wire \out_OBUF[9]_inst_i_5_n_0 ;
  wire \out_OBUF[9]_inst_i_6_n_0 ;
  wire \out_OBUF[9]_inst_i_7_n_0 ;
  wire \out_OBUF[9]_inst_i_8_n_0 ;
  wire slt_out0;
  wire slt_out01_in;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_17_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_45_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_45_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_54_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_54_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[0]_inst_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[0]_inst_i_8_O_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[11]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[15]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[19]_inst_i_7_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[23]_inst_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[27]_inst_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_out_OBUF[31]_inst_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[3]_inst_i_6_CO_UNCONNECTED ;
  wire [2:0]\NLW_out_OBUF[7]_inst_i_6_CO_UNCONNECTED ;

  IBUF \control_IBUF[0]_inst 
       (.I(control[0]),
        .O(control_IBUF[0]));
  IBUF \control_IBUF[1]_inst 
       (.I(control[1]),
        .O(control_IBUF[1]));
  IBUF \control_IBUF[2]_inst 
       (.I(control[2]),
        .O(control_IBUF[2]));
  IBUF \control_IBUF[3]_inst 
       (.I(control[3]),
        .O(control_IBUF[3]));
  IBUF \in_1_IBUF[0]_inst 
       (.I(in_1[0]),
        .O(in_1_IBUF[0]));
  IBUF \in_1_IBUF[10]_inst 
       (.I(in_1[10]),
        .O(in_1_IBUF[10]));
  IBUF \in_1_IBUF[11]_inst 
       (.I(in_1[11]),
        .O(in_1_IBUF[11]));
  IBUF \in_1_IBUF[12]_inst 
       (.I(in_1[12]),
        .O(in_1_IBUF[12]));
  IBUF \in_1_IBUF[13]_inst 
       (.I(in_1[13]),
        .O(in_1_IBUF[13]));
  IBUF \in_1_IBUF[14]_inst 
       (.I(in_1[14]),
        .O(in_1_IBUF[14]));
  IBUF \in_1_IBUF[15]_inst 
       (.I(in_1[15]),
        .O(in_1_IBUF[15]));
  IBUF \in_1_IBUF[16]_inst 
       (.I(in_1[16]),
        .O(in_1_IBUF[16]));
  IBUF \in_1_IBUF[17]_inst 
       (.I(in_1[17]),
        .O(in_1_IBUF[17]));
  IBUF \in_1_IBUF[18]_inst 
       (.I(in_1[18]),
        .O(in_1_IBUF[18]));
  IBUF \in_1_IBUF[19]_inst 
       (.I(in_1[19]),
        .O(in_1_IBUF[19]));
  IBUF \in_1_IBUF[1]_inst 
       (.I(in_1[1]),
        .O(in_1_IBUF[1]));
  IBUF \in_1_IBUF[20]_inst 
       (.I(in_1[20]),
        .O(in_1_IBUF[20]));
  IBUF \in_1_IBUF[21]_inst 
       (.I(in_1[21]),
        .O(in_1_IBUF[21]));
  IBUF \in_1_IBUF[22]_inst 
       (.I(in_1[22]),
        .O(in_1_IBUF[22]));
  IBUF \in_1_IBUF[23]_inst 
       (.I(in_1[23]),
        .O(in_1_IBUF[23]));
  IBUF \in_1_IBUF[24]_inst 
       (.I(in_1[24]),
        .O(in_1_IBUF[24]));
  IBUF \in_1_IBUF[25]_inst 
       (.I(in_1[25]),
        .O(in_1_IBUF[25]));
  IBUF \in_1_IBUF[26]_inst 
       (.I(in_1[26]),
        .O(in_1_IBUF[26]));
  IBUF \in_1_IBUF[27]_inst 
       (.I(in_1[27]),
        .O(in_1_IBUF[27]));
  IBUF \in_1_IBUF[28]_inst 
       (.I(in_1[28]),
        .O(in_1_IBUF[28]));
  IBUF \in_1_IBUF[29]_inst 
       (.I(in_1[29]),
        .O(in_1_IBUF[29]));
  IBUF \in_1_IBUF[2]_inst 
       (.I(in_1[2]),
        .O(in_1_IBUF[2]));
  IBUF \in_1_IBUF[30]_inst 
       (.I(in_1[30]),
        .O(in_1_IBUF[30]));
  IBUF \in_1_IBUF[31]_inst 
       (.I(in_1[31]),
        .O(in_1_IBUF[31]));
  IBUF \in_1_IBUF[3]_inst 
       (.I(in_1[3]),
        .O(in_1_IBUF[3]));
  IBUF \in_1_IBUF[4]_inst 
       (.I(in_1[4]),
        .O(in_1_IBUF[4]));
  IBUF \in_1_IBUF[5]_inst 
       (.I(in_1[5]),
        .O(in_1_IBUF[5]));
  IBUF \in_1_IBUF[6]_inst 
       (.I(in_1[6]),
        .O(in_1_IBUF[6]));
  IBUF \in_1_IBUF[7]_inst 
       (.I(in_1[7]),
        .O(in_1_IBUF[7]));
  IBUF \in_1_IBUF[8]_inst 
       (.I(in_1[8]),
        .O(in_1_IBUF[8]));
  IBUF \in_1_IBUF[9]_inst 
       (.I(in_1[9]),
        .O(in_1_IBUF[9]));
  IBUF \in_2_IBUF[0]_inst 
       (.I(in_2[0]),
        .O(in_2_IBUF[0]));
  IBUF \in_2_IBUF[10]_inst 
       (.I(in_2[10]),
        .O(in_2_IBUF[10]));
  IBUF \in_2_IBUF[11]_inst 
       (.I(in_2[11]),
        .O(in_2_IBUF[11]));
  IBUF \in_2_IBUF[12]_inst 
       (.I(in_2[12]),
        .O(in_2_IBUF[12]));
  IBUF \in_2_IBUF[13]_inst 
       (.I(in_2[13]),
        .O(in_2_IBUF[13]));
  IBUF \in_2_IBUF[14]_inst 
       (.I(in_2[14]),
        .O(in_2_IBUF[14]));
  IBUF \in_2_IBUF[15]_inst 
       (.I(in_2[15]),
        .O(in_2_IBUF[15]));
  IBUF \in_2_IBUF[16]_inst 
       (.I(in_2[16]),
        .O(in_2_IBUF[16]));
  IBUF \in_2_IBUF[17]_inst 
       (.I(in_2[17]),
        .O(in_2_IBUF[17]));
  IBUF \in_2_IBUF[18]_inst 
       (.I(in_2[18]),
        .O(in_2_IBUF[18]));
  IBUF \in_2_IBUF[19]_inst 
       (.I(in_2[19]),
        .O(in_2_IBUF[19]));
  IBUF \in_2_IBUF[1]_inst 
       (.I(in_2[1]),
        .O(in_2_IBUF[1]));
  IBUF \in_2_IBUF[20]_inst 
       (.I(in_2[20]),
        .O(in_2_IBUF[20]));
  IBUF \in_2_IBUF[21]_inst 
       (.I(in_2[21]),
        .O(in_2_IBUF[21]));
  IBUF \in_2_IBUF[22]_inst 
       (.I(in_2[22]),
        .O(in_2_IBUF[22]));
  IBUF \in_2_IBUF[23]_inst 
       (.I(in_2[23]),
        .O(in_2_IBUF[23]));
  IBUF \in_2_IBUF[24]_inst 
       (.I(in_2[24]),
        .O(in_2_IBUF[24]));
  IBUF \in_2_IBUF[25]_inst 
       (.I(in_2[25]),
        .O(in_2_IBUF[25]));
  IBUF \in_2_IBUF[26]_inst 
       (.I(in_2[26]),
        .O(in_2_IBUF[26]));
  IBUF \in_2_IBUF[27]_inst 
       (.I(in_2[27]),
        .O(in_2_IBUF[27]));
  IBUF \in_2_IBUF[28]_inst 
       (.I(in_2[28]),
        .O(in_2_IBUF[28]));
  IBUF \in_2_IBUF[29]_inst 
       (.I(in_2[29]),
        .O(in_2_IBUF[29]));
  IBUF \in_2_IBUF[2]_inst 
       (.I(in_2[2]),
        .O(in_2_IBUF[2]));
  IBUF \in_2_IBUF[30]_inst 
       (.I(in_2[30]),
        .O(in_2_IBUF[30]));
  IBUF \in_2_IBUF[31]_inst 
       (.I(in_2[31]),
        .O(in_2_IBUF[31]));
  IBUF \in_2_IBUF[3]_inst 
       (.I(in_2[3]),
        .O(in_2_IBUF[3]));
  IBUF \in_2_IBUF[4]_inst 
       (.I(in_2[4]),
        .O(in_2_IBUF[4]));
  IBUF \in_2_IBUF[5]_inst 
       (.I(in_2[5]),
        .O(in_2_IBUF[5]));
  IBUF \in_2_IBUF[6]_inst 
       (.I(in_2[6]),
        .O(in_2_IBUF[6]));
  IBUF \in_2_IBUF[7]_inst 
       (.I(in_2[7]),
        .O(in_2_IBUF[7]));
  IBUF \in_2_IBUF[8]_inst 
       (.I(in_2[8]),
        .O(in_2_IBUF[8]));
  IBUF \in_2_IBUF[9]_inst 
       (.I(in_2[9]),
        .O(in_2_IBUF[9]));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  MUXF7 \out_OBUF[0]_inst_i_1 
       (.I0(\out_OBUF[0]_inst_i_2_n_0 ),
        .I1(\out_OBUF[0]_inst_i_3_n_0 ),
        .O(out_OBUF[0]),
        .S(control_IBUF[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_10 
       (.I0(in_2_IBUF[28]),
        .I1(in_1_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out_OBUF[0]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_11 
       (.I0(in_2_IBUF[26]),
        .I1(in_1_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out_OBUF[0]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_12 
       (.I0(in_2_IBUF[24]),
        .I1(in_1_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out_OBUF[0]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_13 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[30]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[31]),
        .O(\out_OBUF[0]_inst_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_14 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out_OBUF[0]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_15 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out_OBUF[0]_inst_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_16 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out_OBUF[0]_inst_i_16_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_17 
       (.CI(\out_OBUF[0]_inst_i_36_n_0 ),
        .CO({\out_OBUF[0]_inst_i_17_n_0 ,\NLW_out_OBUF[0]_inst_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_37_n_0 ,\out_OBUF[0]_inst_i_38_n_0 ,\out_OBUF[0]_inst_i_39_n_0 ,\out_OBUF[0]_inst_i_40_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_17_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_41_n_0 ,\out_OBUF[0]_inst_i_42_n_0 ,\out_OBUF[0]_inst_i_43_n_0 ,\out_OBUF[0]_inst_i_44_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_18 
       (.I0(in_2_IBUF[30]),
        .I1(in_1_IBUF[30]),
        .I2(in_2_IBUF[31]),
        .I3(in_1_IBUF[31]),
        .O(\out_OBUF[0]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_19 
       (.I0(in_2_IBUF[28]),
        .I1(in_1_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out_OBUF[0]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[0]_inst_i_2 
       (.I0(slt_out01_in),
        .I1(slt_out0),
        .I2(control_IBUF[1]),
        .I3(\out_OBUF[0]_inst_i_6_n_0 ),
        .I4(control_IBUF[0]),
        .I5(\out_OBUF[3]_inst_i_6_n_7 ),
        .O(\out_OBUF[0]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_20 
       (.I0(in_2_IBUF[26]),
        .I1(in_1_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out_OBUF[0]_inst_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_21 
       (.I0(in_2_IBUF[24]),
        .I1(in_1_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out_OBUF[0]_inst_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_22 
       (.I0(in_2_IBUF[31]),
        .I1(in_1_IBUF[31]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[30]),
        .O(\out_OBUF[0]_inst_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_23 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out_OBUF[0]_inst_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_24 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out_OBUF[0]_inst_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_25 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out_OBUF[0]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[0]_inst_i_26 
       (.I0(in_1_IBUF[24]),
        .I1(in_1_IBUF[8]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[16]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[0]),
        .O(\out_OBUF[0]_inst_i_26_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_27 
       (.CI(\out_OBUF[0]_inst_i_45_n_0 ),
        .CO({\out_OBUF[0]_inst_i_27_n_0 ,\NLW_out_OBUF[0]_inst_i_27_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_46_n_0 ,\out_OBUF[0]_inst_i_47_n_0 ,\out_OBUF[0]_inst_i_48_n_0 ,\out_OBUF[0]_inst_i_49_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_27_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_50_n_0 ,\out_OBUF[0]_inst_i_51_n_0 ,\out_OBUF[0]_inst_i_52_n_0 ,\out_OBUF[0]_inst_i_53_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_28 
       (.I0(in_2_IBUF[22]),
        .I1(in_1_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out_OBUF[0]_inst_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_29 
       (.I0(in_2_IBUF[20]),
        .I1(in_1_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out_OBUF[0]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hEEAA50FF44FF5000)) 
    \out_OBUF[0]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(\out_OBUF[1]_inst_i_5_n_0 ),
        .I2(\out_OBUF[0]_inst_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .I5(in_1_IBUF[0]),
        .O(\out_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_30 
       (.I0(in_2_IBUF[18]),
        .I1(in_1_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out_OBUF[0]_inst_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_31 
       (.I0(in_2_IBUF[16]),
        .I1(in_1_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out_OBUF[0]_inst_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_32 
       (.I0(in_1_IBUF[22]),
        .I1(in_2_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out_OBUF[0]_inst_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_33 
       (.I0(in_1_IBUF[20]),
        .I1(in_2_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out_OBUF[0]_inst_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_34 
       (.I0(in_1_IBUF[18]),
        .I1(in_2_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out_OBUF[0]_inst_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_35 
       (.I0(in_1_IBUF[16]),
        .I1(in_2_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out_OBUF[0]_inst_i_35_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_36 
       (.CI(\out_OBUF[0]_inst_i_54_n_0 ),
        .CO({\out_OBUF[0]_inst_i_36_n_0 ,\NLW_out_OBUF[0]_inst_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_55_n_0 ,\out_OBUF[0]_inst_i_56_n_0 ,\out_OBUF[0]_inst_i_57_n_0 ,\out_OBUF[0]_inst_i_58_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_36_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_59_n_0 ,\out_OBUF[0]_inst_i_60_n_0 ,\out_OBUF[0]_inst_i_61_n_0 ,\out_OBUF[0]_inst_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_37 
       (.I0(in_2_IBUF[22]),
        .I1(in_1_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out_OBUF[0]_inst_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_38 
       (.I0(in_2_IBUF[20]),
        .I1(in_1_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out_OBUF[0]_inst_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_39 
       (.I0(in_2_IBUF[18]),
        .I1(in_1_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out_OBUF[0]_inst_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_4 
       (.CI(\out_OBUF[0]_inst_i_8_n_0 ),
        .CO({slt_out01_in,\NLW_out_OBUF[0]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_9_n_0 ,\out_OBUF[0]_inst_i_10_n_0 ,\out_OBUF[0]_inst_i_11_n_0 ,\out_OBUF[0]_inst_i_12_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_13_n_0 ,\out_OBUF[0]_inst_i_14_n_0 ,\out_OBUF[0]_inst_i_15_n_0 ,\out_OBUF[0]_inst_i_16_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_40 
       (.I0(in_2_IBUF[16]),
        .I1(in_1_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out_OBUF[0]_inst_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_41 
       (.I0(in_1_IBUF[22]),
        .I1(in_2_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out_OBUF[0]_inst_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_42 
       (.I0(in_1_IBUF[20]),
        .I1(in_2_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out_OBUF[0]_inst_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_43 
       (.I0(in_1_IBUF[18]),
        .I1(in_2_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out_OBUF[0]_inst_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_44 
       (.I0(in_1_IBUF[16]),
        .I1(in_2_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out_OBUF[0]_inst_i_44_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_45 
       (.CI(1'b0),
        .CO({\out_OBUF[0]_inst_i_45_n_0 ,\NLW_out_OBUF[0]_inst_i_45_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_63_n_0 ,\out_OBUF[0]_inst_i_64_n_0 ,\out_OBUF[0]_inst_i_65_n_0 ,\out_OBUF[0]_inst_i_66_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_45_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_67_n_0 ,\out_OBUF[0]_inst_i_68_n_0 ,\out_OBUF[0]_inst_i_69_n_0 ,\out_OBUF[0]_inst_i_70_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_46 
       (.I0(in_2_IBUF[14]),
        .I1(in_1_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out_OBUF[0]_inst_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_47 
       (.I0(in_2_IBUF[12]),
        .I1(in_1_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out_OBUF[0]_inst_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_48 
       (.I0(in_2_IBUF[10]),
        .I1(in_1_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out_OBUF[0]_inst_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_49 
       (.I0(in_2_IBUF[8]),
        .I1(in_1_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out_OBUF[0]_inst_i_49_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_5 
       (.CI(\out_OBUF[0]_inst_i_17_n_0 ),
        .CO({slt_out0,\NLW_out_OBUF[0]_inst_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_18_n_0 ,\out_OBUF[0]_inst_i_19_n_0 ,\out_OBUF[0]_inst_i_20_n_0 ,\out_OBUF[0]_inst_i_21_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_5_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_22_n_0 ,\out_OBUF[0]_inst_i_23_n_0 ,\out_OBUF[0]_inst_i_24_n_0 ,\out_OBUF[0]_inst_i_25_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_50 
       (.I0(in_1_IBUF[14]),
        .I1(in_2_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out_OBUF[0]_inst_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_51 
       (.I0(in_1_IBUF[12]),
        .I1(in_2_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out_OBUF[0]_inst_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_52 
       (.I0(in_1_IBUF[10]),
        .I1(in_2_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out_OBUF[0]_inst_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_53 
       (.I0(in_1_IBUF[8]),
        .I1(in_2_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out_OBUF[0]_inst_i_53_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_54 
       (.CI(1'b0),
        .CO({\out_OBUF[0]_inst_i_54_n_0 ,\NLW_out_OBUF[0]_inst_i_54_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_71_n_0 ,\out_OBUF[0]_inst_i_72_n_0 ,\out_OBUF[0]_inst_i_73_n_0 ,\out_OBUF[0]_inst_i_74_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_54_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_75_n_0 ,\out_OBUF[0]_inst_i_76_n_0 ,\out_OBUF[0]_inst_i_77_n_0 ,\out_OBUF[0]_inst_i_78_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_55 
       (.I0(in_2_IBUF[14]),
        .I1(in_1_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out_OBUF[0]_inst_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_56 
       (.I0(in_2_IBUF[12]),
        .I1(in_1_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out_OBUF[0]_inst_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_57 
       (.I0(in_2_IBUF[10]),
        .I1(in_1_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out_OBUF[0]_inst_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_58 
       (.I0(in_2_IBUF[8]),
        .I1(in_1_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out_OBUF[0]_inst_i_58_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_59 
       (.I0(in_1_IBUF[14]),
        .I1(in_2_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out_OBUF[0]_inst_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \out_OBUF[0]_inst_i_6 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[2]),
        .I5(in_2_IBUF[0]),
        .O(\out_OBUF[0]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_60 
       (.I0(in_1_IBUF[12]),
        .I1(in_2_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out_OBUF[0]_inst_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_61 
       (.I0(in_1_IBUF[10]),
        .I1(in_2_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out_OBUF[0]_inst_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_62 
       (.I0(in_1_IBUF[8]),
        .I1(in_2_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out_OBUF[0]_inst_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_63 
       (.I0(in_2_IBUF[6]),
        .I1(in_1_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out_OBUF[0]_inst_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_64 
       (.I0(in_2_IBUF[4]),
        .I1(in_1_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out_OBUF[0]_inst_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_65 
       (.I0(in_2_IBUF[2]),
        .I1(in_1_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out_OBUF[0]_inst_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_66 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out_OBUF[0]_inst_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_67 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out_OBUF[0]_inst_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_68 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out_OBUF[0]_inst_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_69 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out_OBUF[0]_inst_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[0]_inst_i_7 
       (.I0(\out_OBUF[6]_inst_i_7_n_0 ),
        .I1(\out_OBUF[2]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[4]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[0]_inst_i_26_n_0 ),
        .O(\out_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_70 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out_OBUF[0]_inst_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_71 
       (.I0(in_2_IBUF[6]),
        .I1(in_1_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out_OBUF[0]_inst_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_72 
       (.I0(in_2_IBUF[4]),
        .I1(in_1_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out_OBUF[0]_inst_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_73 
       (.I0(in_2_IBUF[2]),
        .I1(in_1_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out_OBUF[0]_inst_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_74 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out_OBUF[0]_inst_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_75 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out_OBUF[0]_inst_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_76 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out_OBUF[0]_inst_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_77 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out_OBUF[0]_inst_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out_OBUF[0]_inst_i_78 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out_OBUF[0]_inst_i_78_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[0]_inst_i_8 
       (.CI(\out_OBUF[0]_inst_i_27_n_0 ),
        .CO({\out_OBUF[0]_inst_i_8_n_0 ,\NLW_out_OBUF[0]_inst_i_8_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\out_OBUF[0]_inst_i_28_n_0 ,\out_OBUF[0]_inst_i_29_n_0 ,\out_OBUF[0]_inst_i_30_n_0 ,\out_OBUF[0]_inst_i_31_n_0 }),
        .O(\NLW_out_OBUF[0]_inst_i_8_O_UNCONNECTED [3:0]),
        .S({\out_OBUF[0]_inst_i_32_n_0 ,\out_OBUF[0]_inst_i_33_n_0 ,\out_OBUF[0]_inst_i_34_n_0 ,\out_OBUF[0]_inst_i_35_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out_OBUF[0]_inst_i_9 
       (.I0(in_2_IBUF[30]),
        .I1(in_1_IBUF[30]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[31]),
        .O(\out_OBUF[0]_inst_i_9_n_0 ));
  OBUF \out_OBUF[10]_inst 
       (.I(out_OBUF[10]),
        .O(out[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[10]_inst_i_1 
       (.I0(\out_OBUF[10]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[10]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[10]_inst_i_4_n_0 ),
        .O(out_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[10]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[10]),
        .I2(in_2_IBUF[10]),
        .O(\out_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[10]_inst_i_3 
       (.I0(\out_OBUF[11]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[10]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[10]),
        .I5(in_1_IBUF[10]),
        .O(\out_OBUF[10]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[10]_inst_i_4 
       (.I0(\out_OBUF[11]_inst_i_6_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[11]_inst_i_7_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[10]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[10]_inst_i_5 
       (.I0(\out_OBUF[16]_inst_i_8_n_0 ),
        .I1(\out_OBUF[12]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[14]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[10]_inst_i_7_n_0 ),
        .O(\out_OBUF[10]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[10]_inst_i_6 
       (.I0(\out_OBUF[10]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[12]_inst_i_8_n_0 ),
        .O(\out_OBUF[10]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[10]_inst_i_7 
       (.I0(in_1_IBUF[18]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[26]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[10]),
        .O(\out_OBUF[10]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[10]_inst_i_8 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[7]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[10]_inst_i_8_n_0 ));
  OBUF \out_OBUF[11]_inst 
       (.I(out_OBUF[11]),
        .O(out[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[11]_inst_i_1 
       (.I0(\out_OBUF[11]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[11]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[11]_inst_i_4_n_0 ),
        .O(out_OBUF[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[11]_inst_i_10 
       (.I0(in_2_IBUF[10]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[10]),
        .O(\out_OBUF[11]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[11]_inst_i_11 
       (.I0(in_2_IBUF[9]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[9]),
        .O(\out_OBUF[11]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[11]_inst_i_12 
       (.I0(in_2_IBUF[8]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[8]),
        .O(\out_OBUF[11]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[11]_inst_i_13 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[8]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[11]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[11]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[11]),
        .I2(in_2_IBUF[11]),
        .O(\out_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[11]_inst_i_3 
       (.I0(\out_OBUF[12]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[11]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[11]),
        .I5(in_1_IBUF[11]),
        .O(\out_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[11]_inst_i_4 
       (.I0(\out_OBUF[11]_inst_i_6_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[12]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[11]_inst_i_7_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[11]_inst_i_5 
       (.I0(\out_OBUF[17]_inst_i_8_n_0 ),
        .I1(\out_OBUF[13]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[15]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[11]_inst_i_8_n_0 ),
        .O(\out_OBUF[11]_inst_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[11]_inst_i_6 
       (.CI(\out_OBUF[7]_inst_i_6_n_0 ),
        .CO({\out_OBUF[11]_inst_i_6_n_0 ,\NLW_out_OBUF[11]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[11:8]),
        .O({\out_OBUF[11]_inst_i_6_n_4 ,\out_OBUF[11]_inst_i_6_n_5 ,\out_OBUF[11]_inst_i_6_n_6 ,\out_OBUF[11]_inst_i_6_n_7 }),
        .S({\out_OBUF[11]_inst_i_9_n_0 ,\out_OBUF[11]_inst_i_10_n_0 ,\out_OBUF[11]_inst_i_11_n_0 ,\out_OBUF[11]_inst_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[11]_inst_i_7 
       (.I0(\out_OBUF[11]_inst_i_13_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[13]_inst_i_8_n_0 ),
        .O(\out_OBUF[11]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[11]_inst_i_8 
       (.I0(in_1_IBUF[19]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[11]),
        .O(\out_OBUF[11]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[11]_inst_i_9 
       (.I0(in_2_IBUF[11]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[11]),
        .O(\out_OBUF[11]_inst_i_9_n_0 ));
  OBUF \out_OBUF[12]_inst 
       (.I(out_OBUF[12]),
        .O(out[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[12]_inst_i_1 
       (.I0(\out_OBUF[12]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[12]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[12]_inst_i_4_n_0 ),
        .O(out_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[12]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[12]),
        .I2(in_2_IBUF[12]),
        .O(\out_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[12]_inst_i_3 
       (.I0(\out_OBUF[13]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[12]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[12]),
        .I5(in_1_IBUF[12]),
        .O(\out_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[12]_inst_i_4 
       (.I0(\out_OBUF[15]_inst_i_6_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[13]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[12]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[12]_inst_i_5 
       (.I0(\out_OBUF[18]_inst_i_8_n_0 ),
        .I1(\out_OBUF[14]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[16]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[12]_inst_i_7_n_0 ),
        .O(\out_OBUF[12]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[12]_inst_i_6 
       (.I0(\out_OBUF[12]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[14]_inst_i_8_n_0 ),
        .O(\out_OBUF[12]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[12]_inst_i_7 
       (.I0(in_1_IBUF[20]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[12]),
        .O(\out_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[12]_inst_i_8 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[9]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[12]_inst_i_8_n_0 ));
  OBUF \out_OBUF[13]_inst 
       (.I(out_OBUF[13]),
        .O(out[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[13]_inst_i_1 
       (.I0(\out_OBUF[13]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[13]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[13]_inst_i_4_n_0 ),
        .O(out_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[13]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[13]),
        .I2(in_2_IBUF[13]),
        .O(\out_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[13]_inst_i_3 
       (.I0(\out_OBUF[14]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[13]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[13]),
        .I5(in_1_IBUF[13]),
        .O(\out_OBUF[13]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[13]_inst_i_4 
       (.I0(\out_OBUF[15]_inst_i_6_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[14]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[13]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[13]_inst_i_5 
       (.I0(\out_OBUF[19]_inst_i_10_n_0 ),
        .I1(\out_OBUF[15]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[17]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[13]_inst_i_7_n_0 ),
        .O(\out_OBUF[13]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_OBUF[13]_inst_i_6 
       (.I0(\out_OBUF[13]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[15]_inst_i_13_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out_OBUF[19]_inst_i_15_n_0 ),
        .O(\out_OBUF[13]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[13]_inst_i_7 
       (.I0(in_1_IBUF[21]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[13]),
        .O(\out_OBUF[13]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[13]_inst_i_8 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[10]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[13]_inst_i_8_n_0 ));
  OBUF \out_OBUF[14]_inst 
       (.I(out_OBUF[14]),
        .O(out[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[14]_inst_i_1 
       (.I0(\out_OBUF[14]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[14]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[14]_inst_i_4_n_0 ),
        .O(out_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[14]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[14]),
        .I2(in_2_IBUF[14]),
        .O(\out_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[14]_inst_i_3 
       (.I0(\out_OBUF[15]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[14]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[14]),
        .I5(in_1_IBUF[14]),
        .O(\out_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[14]_inst_i_4 
       (.I0(\out_OBUF[15]_inst_i_6_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[15]_inst_i_7_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[14]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[14]_inst_i_5 
       (.I0(\out_OBUF[16]_inst_i_7_n_0 ),
        .I1(\out_OBUF[16]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[18]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[14]_inst_i_7_n_0 ),
        .O(\out_OBUF[14]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_OBUF[14]_inst_i_6 
       (.I0(\out_OBUF[14]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[16]_inst_i_9_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out_OBUF[20]_inst_i_6_n_0 ),
        .O(\out_OBUF[14]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[14]_inst_i_7 
       (.I0(in_1_IBUF[22]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[14]),
        .O(\out_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[14]_inst_i_8 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[11]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[14]_inst_i_8_n_0 ));
  OBUF \out_OBUF[15]_inst 
       (.I(out_OBUF[15]),
        .O(out[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[15]_inst_i_1 
       (.I0(\out_OBUF[15]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[15]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[15]_inst_i_4_n_0 ),
        .O(out_OBUF[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[15]_inst_i_10 
       (.I0(in_2_IBUF[14]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[14]),
        .O(\out_OBUF[15]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[15]_inst_i_11 
       (.I0(in_2_IBUF[13]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[13]),
        .O(\out_OBUF[15]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[15]_inst_i_12 
       (.I0(in_2_IBUF[12]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[12]),
        .O(\out_OBUF[15]_inst_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[15]_inst_i_13 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[8]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[15]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[15]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[15]),
        .I2(in_2_IBUF[15]),
        .O(\out_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[15]_inst_i_3 
       (.I0(\out_OBUF[16]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[15]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[15]),
        .I5(in_1_IBUF[15]),
        .O(\out_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[15]_inst_i_4 
       (.I0(\out_OBUF[15]_inst_i_6_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[16]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[15]_inst_i_7_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[15]_inst_i_5 
       (.I0(\out_OBUF[17]_inst_i_7_n_0 ),
        .I1(\out_OBUF[17]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[19]_inst_i_10_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[15]_inst_i_8_n_0 ),
        .O(\out_OBUF[15]_inst_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[15]_inst_i_6 
       (.CI(\out_OBUF[11]_inst_i_6_n_0 ),
        .CO({\out_OBUF[15]_inst_i_6_n_0 ,\NLW_out_OBUF[15]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[15:12]),
        .O({\out_OBUF[15]_inst_i_6_n_4 ,\out_OBUF[15]_inst_i_6_n_5 ,\out_OBUF[15]_inst_i_6_n_6 ,\out_OBUF[15]_inst_i_6_n_7 }),
        .S({\out_OBUF[15]_inst_i_9_n_0 ,\out_OBUF[15]_inst_i_10_n_0 ,\out_OBUF[15]_inst_i_11_n_0 ,\out_OBUF[15]_inst_i_12_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[15]_inst_i_7 
       (.I0(\out_OBUF[15]_inst_i_13_n_0 ),
        .I1(\out_OBUF[19]_inst_i_15_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[17]_inst_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[21]_inst_i_6_n_0 ),
        .O(\out_OBUF[15]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[15]_inst_i_8 
       (.I0(in_1_IBUF[23]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[15]),
        .O(\out_OBUF[15]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[15]_inst_i_9 
       (.I0(in_2_IBUF[15]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[15]),
        .O(\out_OBUF[15]_inst_i_9_n_0 ));
  OBUF \out_OBUF[16]_inst 
       (.I(out_OBUF[16]),
        .O(out[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[16]_inst_i_1 
       (.I0(\out_OBUF[16]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[16]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[16]_inst_i_4_n_0 ),
        .O(out_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[16]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[16]),
        .I2(in_2_IBUF[16]),
        .O(\out_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[16]_inst_i_3 
       (.I0(\out_OBUF[17]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[16]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[16]),
        .I5(in_1_IBUF[16]),
        .O(\out_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[16]_inst_i_4 
       (.I0(\out_OBUF[19]_inst_i_7_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[17]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[16]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[16]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_5 
       (.I0(\out_OBUF[18]_inst_i_7_n_0 ),
        .I1(\out_OBUF[18]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[16]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[16]_inst_i_8_n_0 ),
        .O(\out_OBUF[16]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[16]_inst_i_6 
       (.I0(\out_OBUF[16]_inst_i_9_n_0 ),
        .I1(\out_OBUF[20]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[18]_inst_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[22]_inst_i_6_n_0 ),
        .O(\out_OBUF[16]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[16]_inst_i_7 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[20]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[16]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[16]_inst_i_8 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[16]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[16]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[16]_inst_i_9 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[16]_inst_i_9_n_0 ));
  OBUF \out_OBUF[17]_inst 
       (.I(out_OBUF[17]),
        .O(out[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[17]_inst_i_1 
       (.I0(\out_OBUF[17]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[17]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[17]_inst_i_4_n_0 ),
        .O(out_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[17]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[17]),
        .I2(in_2_IBUF[17]),
        .O(\out_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[17]_inst_i_3 
       (.I0(\out_OBUF[18]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[17]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[17]),
        .I5(in_1_IBUF[17]),
        .O(\out_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[17]_inst_i_4 
       (.I0(\out_OBUF[19]_inst_i_7_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[18]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[17]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[17]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_5 
       (.I0(\out_OBUF[19]_inst_i_9_n_0 ),
        .I1(\out_OBUF[19]_inst_i_10_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[17]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[17]_inst_i_8_n_0 ),
        .O(\out_OBUF[17]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[17]_inst_i_6 
       (.I0(\out_OBUF[17]_inst_i_9_n_0 ),
        .I1(\out_OBUF[21]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[19]_inst_i_15_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[23]_inst_i_11_n_0 ),
        .O(\out_OBUF[17]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[17]_inst_i_7 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[17]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[17]_inst_i_8 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[17]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[17]_inst_i_9 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[10]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[17]_inst_i_9_n_0 ));
  OBUF \out_OBUF[18]_inst 
       (.I(out_OBUF[18]),
        .O(out[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[18]_inst_i_1 
       (.I0(\out_OBUF[18]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[18]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[18]_inst_i_4_n_0 ),
        .O(out_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[18]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[18]),
        .I2(in_2_IBUF[18]),
        .O(\out_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[18]_inst_i_3 
       (.I0(\out_OBUF[19]_inst_i_6_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[18]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[18]),
        .I5(in_1_IBUF[18]),
        .O(\out_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[18]_inst_i_4 
       (.I0(\out_OBUF[19]_inst_i_7_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[19]_inst_i_8_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[18]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[18]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_OBUF[18]_inst_i_5 
       (.I0(\out_OBUF[20]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[18]_inst_i_7_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out_OBUF[18]_inst_i_8_n_0 ),
        .O(\out_OBUF[18]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[18]_inst_i_6 
       (.I0(\out_OBUF[18]_inst_i_9_n_0 ),
        .I1(\out_OBUF[22]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[20]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[24]_inst_i_6_n_0 ),
        .O(\out_OBUF[18]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[18]_inst_i_7 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[22]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[18]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[18]_inst_i_8 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[18]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[18]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[18]_inst_i_9 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[18]_inst_i_9_n_0 ));
  OBUF \out_OBUF[19]_inst 
       (.I(out_OBUF[19]),
        .O(out[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[19]_inst_i_1 
       (.I0(\out_OBUF[19]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[19]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[19]_inst_i_4_n_0 ),
        .O(out_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[19]_inst_i_10 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[19]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[19]_inst_i_11 
       (.I0(in_2_IBUF[19]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[19]),
        .O(\out_OBUF[19]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[19]_inst_i_12 
       (.I0(in_2_IBUF[18]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[18]),
        .O(\out_OBUF[19]_inst_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[19]_inst_i_13 
       (.I0(in_2_IBUF[17]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[17]),
        .O(\out_OBUF[19]_inst_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[19]_inst_i_14 
       (.I0(in_2_IBUF[16]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[16]),
        .O(\out_OBUF[19]_inst_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[19]_inst_i_15 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[12]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[19]_inst_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[19]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[19]),
        .I2(in_2_IBUF[19]),
        .O(\out_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[19]_inst_i_3 
       (.I0(\out_OBUF[19]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[19]_inst_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[19]),
        .I5(in_1_IBUF[19]),
        .O(\out_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[19]_inst_i_4 
       (.I0(\out_OBUF[19]_inst_i_7_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[20]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[19]_inst_i_8_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[19]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[19]_inst_i_5 
       (.I0(\out_OBUF[22]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[20]_inst_i_7_n_0 ),
        .O(\out_OBUF[19]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_OBUF[19]_inst_i_6 
       (.I0(\out_OBUF[21]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[19]_inst_i_9_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out_OBUF[19]_inst_i_10_n_0 ),
        .O(\out_OBUF[19]_inst_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[19]_inst_i_7 
       (.CI(\out_OBUF[15]_inst_i_6_n_0 ),
        .CO({\out_OBUF[19]_inst_i_7_n_0 ,\NLW_out_OBUF[19]_inst_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[19:16]),
        .O({\out_OBUF[19]_inst_i_7_n_4 ,\out_OBUF[19]_inst_i_7_n_5 ,\out_OBUF[19]_inst_i_7_n_6 ,\out_OBUF[19]_inst_i_7_n_7 }),
        .S({\out_OBUF[19]_inst_i_11_n_0 ,\out_OBUF[19]_inst_i_12_n_0 ,\out_OBUF[19]_inst_i_13_n_0 ,\out_OBUF[19]_inst_i_14_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[19]_inst_i_8 
       (.I0(\out_OBUF[19]_inst_i_15_n_0 ),
        .I1(\out_OBUF[23]_inst_i_11_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[21]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[25]_inst_i_6_n_0 ),
        .O(\out_OBUF[19]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[19]_inst_i_9 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[19]_inst_i_9_n_0 ));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[1]_inst_i_1 
       (.I0(\out_OBUF[1]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[1]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[1]_inst_i_4_n_0 ),
        .O(out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[1]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[1]),
        .I2(in_2_IBUF[1]),
        .O(\out_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[1]_inst_i_3 
       (.I0(\out_OBUF[2]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[1]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[1]),
        .I5(in_1_IBUF[1]),
        .O(\out_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[1]_inst_i_4 
       (.I0(\out_OBUF[3]_inst_i_6_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[2]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[1]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[1]_inst_i_5 
       (.I0(\out_OBUF[7]_inst_i_8_n_0 ),
        .I1(\out_OBUF[3]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[5]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[1]_inst_i_7_n_0 ),
        .O(\out_OBUF[1]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \out_OBUF[1]_inst_i_6 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .O(\out_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[1]_inst_i_7 
       (.I0(in_1_IBUF[25]),
        .I1(in_1_IBUF[9]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[17]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[1]),
        .O(\out_OBUF[1]_inst_i_7_n_0 ));
  OBUF \out_OBUF[20]_inst 
       (.I(out_OBUF[20]),
        .O(out[20]));
  MUXF7 \out_OBUF[20]_inst_i_1 
       (.I0(\out_OBUF[20]_inst_i_2_n_0 ),
        .I1(\out_OBUF[20]_inst_i_3_n_0 ),
        .O(out_OBUF[20]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[20]_inst_i_2 
       (.I0(\out_OBUF[23]_inst_i_4_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[21]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[20]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[20]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[20]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[20]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[20]),
        .I4(in_1_IBUF[20]),
        .O(\out_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_4 
       (.I0(\out_OBUF[20]_inst_i_6_n_0 ),
        .I1(\out_OBUF[24]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[22]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[26]_inst_i_6_n_0 ),
        .O(\out_OBUF[20]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[20]_inst_i_5 
       (.I0(\out_OBUF[23]_inst_i_12_n_0 ),
        .I1(\out_OBUF[21]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[22]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[20]_inst_i_7_n_0 ),
        .O(out2[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[20]_inst_i_6 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[20]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[20]_inst_i_7 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[20]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[20]_inst_i_7_n_0 ));
  OBUF \out_OBUF[21]_inst 
       (.I(out_OBUF[21]),
        .O(out[21]));
  MUXF7 \out_OBUF[21]_inst_i_1 
       (.I0(\out_OBUF[21]_inst_i_2_n_0 ),
        .I1(\out_OBUF[21]_inst_i_3_n_0 ),
        .O(out_OBUF[21]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[21]_inst_i_2 
       (.I0(\out_OBUF[23]_inst_i_4_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[22]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[21]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[21]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[21]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[21]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[21]),
        .I4(in_1_IBUF[21]),
        .O(\out_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_4 
       (.I0(\out_OBUF[21]_inst_i_6_n_0 ),
        .I1(\out_OBUF[25]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[23]_inst_i_11_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[27]_inst_i_11_n_0 ),
        .O(\out_OBUF[21]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[21]_inst_i_5 
       (.I0(\out_OBUF[24]_inst_i_7_n_0 ),
        .I1(\out_OBUF[22]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[23]_inst_i_12_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[21]_inst_i_7_n_0 ),
        .O(out2[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[21]_inst_i_6 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[14]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[21]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[21]_inst_i_7 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[21]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[21]_inst_i_7_n_0 ));
  OBUF \out_OBUF[22]_inst 
       (.I(out_OBUF[22]),
        .O(out[22]));
  MUXF7 \out_OBUF[22]_inst_i_1 
       (.I0(\out_OBUF[22]_inst_i_2_n_0 ),
        .I1(\out_OBUF[22]_inst_i_3_n_0 ),
        .O(out_OBUF[22]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[22]_inst_i_2 
       (.I0(\out_OBUF[23]_inst_i_4_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[23]_inst_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[22]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[22]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[22]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[22]),
        .I4(in_1_IBUF[22]),
        .O(\out_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_4 
       (.I0(\out_OBUF[22]_inst_i_6_n_0 ),
        .I1(\out_OBUF[26]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[24]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[28]_inst_i_6_n_0 ),
        .O(\out_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[22]_inst_i_5 
       (.I0(\out_OBUF[25]_inst_i_7_n_0 ),
        .I1(\out_OBUF[23]_inst_i_12_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[24]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[22]_inst_i_7_n_0 ),
        .O(out2[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \out_OBUF[22]_inst_i_6 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[4]),
        .O(\out_OBUF[22]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[22]_inst_i_7 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[22]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[22]_inst_i_7_n_0 ));
  OBUF \out_OBUF[23]_inst 
       (.I(out_OBUF[23]),
        .O(out[23]));
  MUXF7 \out_OBUF[23]_inst_i_1 
       (.I0(\out_OBUF[23]_inst_i_2_n_0 ),
        .I1(\out_OBUF[23]_inst_i_3_n_0 ),
        .O(out_OBUF[23]),
        .S(control_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[23]_inst_i_10 
       (.I0(in_2_IBUF[20]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[20]),
        .O(\out_OBUF[23]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[23]_inst_i_11 
       (.I0(in_1_IBUF[8]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[16]),
        .O(\out_OBUF[23]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out_OBUF[23]_inst_i_12 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[3]),
        .I4(in_1_IBUF[23]),
        .I5(in_2_IBUF[4]),
        .O(\out_OBUF[23]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[23]_inst_i_2 
       (.I0(\out_OBUF[23]_inst_i_4_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[24]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[23]_inst_i_5_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[23]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[23]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[23]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[23]),
        .I4(in_1_IBUF[23]),
        .O(\out_OBUF[23]_inst_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[23]_inst_i_4 
       (.CI(\out_OBUF[19]_inst_i_7_n_0 ),
        .CO({\out_OBUF[23]_inst_i_4_n_0 ,\NLW_out_OBUF[23]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[23:20]),
        .O({\out_OBUF[23]_inst_i_4_n_4 ,\out_OBUF[23]_inst_i_4_n_5 ,\out_OBUF[23]_inst_i_4_n_6 ,\out_OBUF[23]_inst_i_4_n_7 }),
        .S({\out_OBUF[23]_inst_i_7_n_0 ,\out_OBUF[23]_inst_i_8_n_0 ,\out_OBUF[23]_inst_i_9_n_0 ,\out_OBUF[23]_inst_i_10_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_5 
       (.I0(\out_OBUF[23]_inst_i_11_n_0 ),
        .I1(\out_OBUF[27]_inst_i_11_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[25]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[29]_inst_i_6_n_0 ),
        .O(\out_OBUF[23]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[23]_inst_i_6 
       (.I0(\out_OBUF[26]_inst_i_8_n_0 ),
        .I1(\out_OBUF[24]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[25]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[23]_inst_i_12_n_0 ),
        .O(out2[23]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[23]_inst_i_7 
       (.I0(in_2_IBUF[23]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[23]),
        .O(\out_OBUF[23]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[23]_inst_i_8 
       (.I0(in_2_IBUF[22]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[22]),
        .O(\out_OBUF[23]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[23]_inst_i_9 
       (.I0(in_2_IBUF[21]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[21]),
        .O(\out_OBUF[23]_inst_i_9_n_0 ));
  OBUF \out_OBUF[24]_inst 
       (.I(out_OBUF[24]),
        .O(out[24]));
  MUXF7 \out_OBUF[24]_inst_i_1 
       (.I0(\out_OBUF[24]_inst_i_2_n_0 ),
        .I1(\out_OBUF[24]_inst_i_3_n_0 ),
        .O(out_OBUF[24]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[24]_inst_i_2 
       (.I0(\out_OBUF[27]_inst_i_4_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[25]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[24]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[24]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[24]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[24]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[24]),
        .I4(in_1_IBUF[24]),
        .O(\out_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_4 
       (.I0(\out_OBUF[24]_inst_i_6_n_0 ),
        .I1(\out_OBUF[28]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[26]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[30]_inst_i_6_n_0 ),
        .O(\out_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[24]_inst_i_5 
       (.I0(\out_OBUF[27]_inst_i_13_n_0 ),
        .I1(\out_OBUF[25]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[26]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[24]_inst_i_7_n_0 ),
        .O(out2[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[24]_inst_i_6 
       (.I0(in_1_IBUF[9]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[17]),
        .O(\out_OBUF[24]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[24]_inst_i_7 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[24]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[24]_inst_i_7_n_0 ));
  OBUF \out_OBUF[25]_inst 
       (.I(out_OBUF[25]),
        .O(out[25]));
  MUXF7 \out_OBUF[25]_inst_i_1 
       (.I0(\out_OBUF[25]_inst_i_2_n_0 ),
        .I1(\out_OBUF[25]_inst_i_3_n_0 ),
        .O(out_OBUF[25]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[25]_inst_i_2 
       (.I0(\out_OBUF[27]_inst_i_4_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[26]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[25]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[25]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[25]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[25]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[25]),
        .I4(in_1_IBUF[25]),
        .O(\out_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_4 
       (.I0(\out_OBUF[25]_inst_i_6_n_0 ),
        .I1(\out_OBUF[29]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[27]_inst_i_11_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_16_n_0 ),
        .O(\out_OBUF[25]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[25]_inst_i_5 
       (.I0(\out_OBUF[26]_inst_i_7_n_0 ),
        .I1(\out_OBUF[26]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[27]_inst_i_13_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[25]_inst_i_7_n_0 ),
        .O(out2[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[25]_inst_i_6 
       (.I0(in_1_IBUF[10]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[18]),
        .O(\out_OBUF[25]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[25]_inst_i_7 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[25]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[25]_inst_i_7_n_0 ));
  OBUF \out_OBUF[26]_inst 
       (.I(out_OBUF[26]),
        .O(out[26]));
  MUXF7 \out_OBUF[26]_inst_i_1 
       (.I0(\out_OBUF[26]_inst_i_2_n_0 ),
        .I1(\out_OBUF[26]_inst_i_3_n_0 ),
        .O(out_OBUF[26]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[26]_inst_i_2 
       (.I0(\out_OBUF[27]_inst_i_4_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[27]_inst_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[26]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[26]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[26]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[26]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[26]),
        .I4(in_1_IBUF[26]),
        .O(\out_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_4 
       (.I0(\out_OBUF[26]_inst_i_6_n_0 ),
        .I1(\out_OBUF[30]_inst_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[28]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_12_n_0 ),
        .O(\out_OBUF[26]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[26]_inst_i_5 
       (.I0(\out_OBUF[27]_inst_i_12_n_0 ),
        .I1(\out_OBUF[27]_inst_i_13_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out_OBUF[26]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[26]_inst_i_8_n_0 ),
        .O(out2[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[26]_inst_i_6 
       (.I0(in_1_IBUF[11]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[19]),
        .O(\out_OBUF[26]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out_OBUF[26]_inst_i_7 
       (.I0(in_2_IBUF[3]),
        .I1(in_1_IBUF[28]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[2]),
        .O(\out_OBUF[26]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[26]_inst_i_8 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[26]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[26]_inst_i_8_n_0 ));
  OBUF \out_OBUF[27]_inst 
       (.I(out_OBUF[27]),
        .O(out[27]));
  MUXF7 \out_OBUF[27]_inst_i_1 
       (.I0(\out_OBUF[27]_inst_i_2_n_0 ),
        .I1(\out_OBUF[27]_inst_i_3_n_0 ),
        .O(out_OBUF[27]),
        .S(control_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[27]_inst_i_10 
       (.I0(in_2_IBUF[24]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[24]),
        .O(\out_OBUF[27]_inst_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[27]_inst_i_11 
       (.I0(in_1_IBUF[12]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[4]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[20]),
        .O(\out_OBUF[27]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \out_OBUF[27]_inst_i_12 
       (.I0(in_2_IBUF[3]),
        .I1(in_1_IBUF[29]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[2]),
        .O(\out_OBUF[27]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[27]_inst_i_13 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[27]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[27]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[27]_inst_i_2 
       (.I0(\out_OBUF[27]_inst_i_4_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[28]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[27]_inst_i_5_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[27]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA4F4F40)) 
    \out_OBUF[27]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(out2[27]),
        .I2(control_IBUF[0]),
        .I3(in_2_IBUF[27]),
        .I4(in_1_IBUF[27]),
        .O(\out_OBUF[27]_inst_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[27]_inst_i_4 
       (.CI(\out_OBUF[23]_inst_i_4_n_0 ),
        .CO({\out_OBUF[27]_inst_i_4_n_0 ,\NLW_out_OBUF[27]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[27:24]),
        .O({\out_OBUF[27]_inst_i_4_n_4 ,\out_OBUF[27]_inst_i_4_n_5 ,\out_OBUF[27]_inst_i_4_n_6 ,\out_OBUF[27]_inst_i_4_n_7 }),
        .S({\out_OBUF[27]_inst_i_7_n_0 ,\out_OBUF[27]_inst_i_8_n_0 ,\out_OBUF[27]_inst_i_9_n_0 ,\out_OBUF[27]_inst_i_10_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[27]_inst_i_5 
       (.I0(\out_OBUF[27]_inst_i_11_n_0 ),
        .I1(\out_OBUF[31]_inst_i_16_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[29]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_18_n_0 ),
        .O(\out_OBUF[27]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out_OBUF[27]_inst_i_6 
       (.I0(\out_OBUF[28]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[27]_inst_i_12_n_0 ),
        .I3(in_2_IBUF[1]),
        .I4(\out_OBUF[27]_inst_i_13_n_0 ),
        .O(out2[27]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[27]_inst_i_7 
       (.I0(in_2_IBUF[27]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[27]),
        .O(\out_OBUF[27]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[27]_inst_i_8 
       (.I0(in_2_IBUF[26]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[26]),
        .O(\out_OBUF[27]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[27]_inst_i_9 
       (.I0(in_2_IBUF[25]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[25]),
        .O(\out_OBUF[27]_inst_i_9_n_0 ));
  OBUF \out_OBUF[28]_inst 
       (.I(out_OBUF[28]),
        .O(out[28]));
  MUXF7 \out_OBUF[28]_inst_i_1 
       (.I0(\out_OBUF[28]_inst_i_2_n_0 ),
        .I1(\out_OBUF[28]_inst_i_3_n_0 ),
        .O(out_OBUF[28]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[28]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_4_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[29]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[28]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD4FFD400)) 
    \out_OBUF[28]_inst_i_3 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[28]),
        .I2(in_2_IBUF[28]),
        .I3(control_IBUF[1]),
        .I4(\out_OBUF[28]_inst_i_5_n_0 ),
        .O(\out_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[28]_inst_i_4 
       (.I0(\out_OBUF[28]_inst_i_6_n_0 ),
        .I1(\out_OBUF[31]_inst_i_12_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[30]_inst_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_14_n_0 ),
        .O(\out_OBUF[28]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[28]_inst_i_5 
       (.I0(\out_OBUF[29]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[28]_inst_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[28]),
        .I5(in_1_IBUF[28]),
        .O(\out_OBUF[28]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[28]_inst_i_6 
       (.I0(in_1_IBUF[13]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[21]),
        .O(\out_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \out_OBUF[28]_inst_i_7 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[28]),
        .I4(in_2_IBUF[4]),
        .I5(in_2_IBUF[2]),
        .O(\out_OBUF[28]_inst_i_7_n_0 ));
  OBUF \out_OBUF[29]_inst 
       (.I(out_OBUF[29]),
        .O(out[29]));
  MUXF7 \out_OBUF[29]_inst_i_1 
       (.I0(\out_OBUF[29]_inst_i_2_n_0 ),
        .I1(\out_OBUF[29]_inst_i_3_n_0 ),
        .O(out_OBUF[29]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[29]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_4_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[30]_inst_i_4_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[29]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD4FFD400)) 
    \out_OBUF[29]_inst_i_3 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[29]),
        .I2(in_2_IBUF[29]),
        .I3(control_IBUF[1]),
        .I4(\out_OBUF[29]_inst_i_5_n_0 ),
        .O(\out_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[29]_inst_i_4 
       (.I0(\out_OBUF[29]_inst_i_6_n_0 ),
        .I1(\out_OBUF[31]_inst_i_18_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[31]_inst_i_16_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_17_n_0 ),
        .O(\out_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[29]_inst_i_5 
       (.I0(\out_OBUF[30]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[29]_inst_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[29]),
        .I5(in_1_IBUF[29]),
        .O(\out_OBUF[29]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[29]_inst_i_6 
       (.I0(in_1_IBUF[14]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[6]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[22]),
        .O(\out_OBUF[29]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \out_OBUF[29]_inst_i_7 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[29]),
        .I4(in_2_IBUF[4]),
        .I5(in_2_IBUF[2]),
        .O(\out_OBUF[29]_inst_i_7_n_0 ));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[2]_inst_i_1 
       (.I0(\out_OBUF[2]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[2]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[2]_inst_i_4_n_0 ),
        .O(out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[2]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[2]),
        .I2(in_2_IBUF[2]),
        .O(\out_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[2]_inst_i_3 
       (.I0(\out_OBUF[3]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[2]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[2]),
        .I5(in_1_IBUF[2]),
        .O(\out_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[2]_inst_i_4 
       (.I0(\out_OBUF[3]_inst_i_6_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[3]_inst_i_7_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[2]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[2]_inst_i_5 
       (.I0(\out_OBUF[8]_inst_i_7_n_0 ),
        .I1(\out_OBUF[4]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[6]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[2]_inst_i_7_n_0 ),
        .O(\out_OBUF[2]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \out_OBUF[2]_inst_i_6 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .O(\out_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[2]_inst_i_7 
       (.I0(in_1_IBUF[26]),
        .I1(in_1_IBUF[10]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[18]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[2]),
        .O(\out_OBUF[2]_inst_i_7_n_0 ));
  OBUF \out_OBUF[30]_inst 
       (.I(out_OBUF[30]),
        .O(out[30]));
  MUXF7 \out_OBUF[30]_inst_i_1 
       (.I0(\out_OBUF[30]_inst_i_2_n_0 ),
        .I1(\out_OBUF[30]_inst_i_3_n_0 ),
        .O(out_OBUF[30]),
        .S(control_IBUF[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[30]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_4_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[31]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[30]_inst_i_4_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[30]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD4FFD400)) 
    \out_OBUF[30]_inst_i_3 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[30]),
        .I2(in_2_IBUF[30]),
        .I3(control_IBUF[1]),
        .I4(\out_OBUF[30]_inst_i_5_n_0 ),
        .O(\out_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[30]_inst_i_4 
       (.I0(\out_OBUF[30]_inst_i_6_n_0 ),
        .I1(\out_OBUF[31]_inst_i_14_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[31]_inst_i_12_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_13_n_0 ),
        .O(\out_OBUF[30]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[30]_inst_i_5 
       (.I0(\out_OBUF[31]_inst_i_7_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[30]_inst_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[30]),
        .I5(in_1_IBUF[30]),
        .O(\out_OBUF[30]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[30]_inst_i_6 
       (.I0(in_1_IBUF[15]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[23]),
        .O(\out_OBUF[30]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \out_OBUF[30]_inst_i_7 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .O(\out_OBUF[30]_inst_i_7_n_0 ));
  OBUF \out_OBUF[31]_inst 
       (.I(out_OBUF[31]),
        .O(out[31]));
  MUXF7 \out_OBUF[31]_inst_i_1 
       (.I0(\out_OBUF[31]_inst_i_2_n_0 ),
        .I1(\out_OBUF[31]_inst_i_3_n_0 ),
        .O(out_OBUF[31]),
        .S(control_IBUF[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[31]_inst_i_10 
       (.I0(in_2_IBUF[29]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[29]),
        .O(\out_OBUF[31]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[31]_inst_i_11 
       (.I0(in_2_IBUF[28]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[28]),
        .O(\out_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_12 
       (.I0(in_1_IBUF[1]),
        .I1(in_1_IBUF[17]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[9]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[25]),
        .O(\out_OBUF[31]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_13 
       (.I0(in_1_IBUF[5]),
        .I1(in_1_IBUF[21]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[13]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[29]),
        .O(\out_OBUF[31]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_14 
       (.I0(in_1_IBUF[3]),
        .I1(in_1_IBUF[19]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[11]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[27]),
        .O(\out_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_15 
       (.I0(in_1_IBUF[7]),
        .I1(in_1_IBUF[23]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[15]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[31]),
        .O(\out_OBUF[31]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_16 
       (.I0(in_1_IBUF[0]),
        .I1(in_1_IBUF[16]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[8]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[24]),
        .O(\out_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_17 
       (.I0(in_1_IBUF[4]),
        .I1(in_1_IBUF[20]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[12]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[28]),
        .O(\out_OBUF[31]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_18 
       (.I0(in_1_IBUF[2]),
        .I1(in_1_IBUF[18]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[10]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[26]),
        .O(\out_OBUF[31]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_19 
       (.I0(in_1_IBUF[6]),
        .I1(in_1_IBUF[22]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[14]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[30]),
        .O(\out_OBUF[31]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[31]_inst_i_2 
       (.I0(\out_OBUF[31]_inst_i_4_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[31]_inst_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[31]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAA04FF04FF0400)) 
    \out_OBUF[31]_inst_i_3 
       (.I0(control_IBUF[1]),
        .I1(\out_OBUF[31]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[31]),
        .I5(in_1_IBUF[31]),
        .O(\out_OBUF[31]_inst_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[31]_inst_i_4 
       (.CI(\out_OBUF[27]_inst_i_4_n_0 ),
        .CO(\NLW_out_OBUF[31]_inst_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,in_1_IBUF[30:28]}),
        .O({\out_OBUF[31]_inst_i_4_n_4 ,\out_OBUF[31]_inst_i_4_n_5 ,\out_OBUF[31]_inst_i_4_n_6 ,\out_OBUF[31]_inst_i_4_n_7 }),
        .S({\out_OBUF[31]_inst_i_8_n_0 ,\out_OBUF[31]_inst_i_9_n_0 ,\out_OBUF[31]_inst_i_10_n_0 ,\out_OBUF[31]_inst_i_11_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_5 
       (.I0(\out_OBUF[31]_inst_i_12_n_0 ),
        .I1(\out_OBUF[31]_inst_i_13_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[31]_inst_i_14_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_15_n_0 ),
        .O(\out_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[31]_inst_i_6 
       (.I0(\out_OBUF[31]_inst_i_16_n_0 ),
        .I1(\out_OBUF[31]_inst_i_17_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[31]_inst_i_18_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[31]_inst_i_19_n_0 ),
        .O(\out_OBUF[31]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \out_OBUF[31]_inst_i_7 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .O(\out_OBUF[31]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[31]_inst_i_8 
       (.I0(in_2_IBUF[31]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[31]),
        .O(\out_OBUF[31]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[31]_inst_i_9 
       (.I0(in_2_IBUF[30]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[30]),
        .O(\out_OBUF[31]_inst_i_9_n_0 ));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[3]_inst_i_1 
       (.I0(\out_OBUF[3]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[3]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[3]_inst_i_4_n_0 ),
        .O(out_OBUF[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_10 
       (.I0(in_2_IBUF[2]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .O(\out_OBUF[3]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_11 
       (.I0(in_2_IBUF[1]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[1]),
        .O(\out_OBUF[3]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[3]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[3]),
        .I2(in_2_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[3]_inst_i_3 
       (.I0(\out_OBUF[4]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[3]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[3]),
        .I5(in_1_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[3]_inst_i_4 
       (.I0(\out_OBUF[3]_inst_i_6_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[4]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[3]_inst_i_7_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[3]_inst_i_5 
       (.I0(\out_OBUF[9]_inst_i_7_n_0 ),
        .I1(\out_OBUF[5]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[7]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[3]_inst_i_8_n_0 ),
        .O(\out_OBUF[3]_inst_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET SWEEP" *) 
  CARRY4 \out_OBUF[3]_inst_i_6 
       (.CI(1'b0),
        .CO({\out_OBUF[3]_inst_i_6_n_0 ,\NLW_out_OBUF[3]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(in_1_IBUF[0]),
        .DI({in_1_IBUF[3:1],control_IBUF[3]}),
        .O({\out_OBUF[3]_inst_i_6_n_4 ,\out_OBUF[3]_inst_i_6_n_5 ,\out_OBUF[3]_inst_i_6_n_6 ,\out_OBUF[3]_inst_i_6_n_7 }),
        .S({\out_OBUF[3]_inst_i_9_n_0 ,\out_OBUF[3]_inst_i_10_n_0 ,\out_OBUF[3]_inst_i_11_n_0 ,in_2_IBUF[0]}));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \out_OBUF[3]_inst_i_7 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[2]),
        .I4(in_2_IBUF[4]),
        .I5(in_2_IBUF[2]),
        .O(\out_OBUF[3]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[3]_inst_i_8 
       (.I0(in_1_IBUF[27]),
        .I1(in_1_IBUF[11]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[19]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[3]_inst_i_9 
       (.I0(in_2_IBUF[3]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[3]),
        .O(\out_OBUF[3]_inst_i_9_n_0 ));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[4]_inst_i_1 
       (.I0(\out_OBUF[4]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[4]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[4]_inst_i_4_n_0 ),
        .O(out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[4]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[4]),
        .I2(in_2_IBUF[4]),
        .O(\out_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[4]_inst_i_3 
       (.I0(\out_OBUF[5]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[4]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[4]),
        .O(\out_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[4]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_6_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[5]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[4]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[4]_inst_i_5 
       (.I0(\out_OBUF[10]_inst_i_7_n_0 ),
        .I1(\out_OBUF[6]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[8]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[4]_inst_i_7_n_0 ),
        .O(\out_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \out_OBUF[4]_inst_i_6 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_2_IBUF[2]),
        .O(\out_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[4]_inst_i_7 
       (.I0(in_1_IBUF[28]),
        .I1(in_1_IBUF[12]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[20]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[4]),
        .O(\out_OBUF[4]_inst_i_7_n_0 ));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[5]_inst_i_1 
       (.I0(\out_OBUF[5]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[5]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[5]_inst_i_4_n_0 ),
        .O(out_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[5]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[5]),
        .I2(in_2_IBUF[5]),
        .O(\out_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[5]_inst_i_3 
       (.I0(\out_OBUF[6]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[5]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[5]),
        .I5(in_1_IBUF[5]),
        .O(\out_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[5]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_6_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[6]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[5]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[5]_inst_i_5 
       (.I0(\out_OBUF[11]_inst_i_8_n_0 ),
        .I1(\out_OBUF[7]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[9]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[5]_inst_i_7_n_0 ),
        .O(\out_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \out_OBUF[5]_inst_i_6 
       (.I0(in_2_IBUF[3]),
        .I1(in_1_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[2]),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[7]_inst_i_13_n_0 ),
        .O(\out_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[5]_inst_i_7 
       (.I0(in_1_IBUF[29]),
        .I1(in_1_IBUF[13]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[21]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[5]),
        .O(\out_OBUF[5]_inst_i_7_n_0 ));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[6]_inst_i_1 
       (.I0(\out_OBUF[6]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[6]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[6]_inst_i_4_n_0 ),
        .O(out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[6]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[6]),
        .I2(in_2_IBUF[6]),
        .O(\out_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[6]_inst_i_3 
       (.I0(\out_OBUF[7]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[6]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[6]),
        .I5(in_1_IBUF[6]),
        .O(\out_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[6]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_6_n_5 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[7]_inst_i_7_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[6]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[6]_inst_i_5 
       (.I0(\out_OBUF[12]_inst_i_7_n_0 ),
        .I1(\out_OBUF[8]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[10]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[6]_inst_i_7_n_0 ),
        .O(\out_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \out_OBUF[6]_inst_i_6 
       (.I0(in_2_IBUF[3]),
        .I1(in_1_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[2]),
        .I4(in_2_IBUF[1]),
        .I5(\out_OBUF[8]_inst_i_8_n_0 ),
        .O(\out_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[6]_inst_i_7 
       (.I0(in_1_IBUF[30]),
        .I1(in_1_IBUF[14]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[22]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[6]),
        .O(\out_OBUF[6]_inst_i_7_n_0 ));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[7]_inst_i_1 
       (.I0(\out_OBUF[7]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[7]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[7]_inst_i_4_n_0 ),
        .O(out_OBUF[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_10 
       (.I0(in_2_IBUF[6]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[6]),
        .O(\out_OBUF[7]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_11 
       (.I0(in_2_IBUF[5]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[5]),
        .O(\out_OBUF[7]_inst_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_12 
       (.I0(in_2_IBUF[4]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[4]),
        .O(\out_OBUF[7]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[7]_inst_i_13 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[4]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[7]_inst_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[7]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[7]),
        .I2(in_2_IBUF[7]),
        .O(\out_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[7]_inst_i_3 
       (.I0(\out_OBUF[8]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[7]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[7]),
        .I5(in_1_IBUF[7]),
        .O(\out_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[7]_inst_i_4 
       (.I0(\out_OBUF[7]_inst_i_6_n_4 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[8]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[7]_inst_i_7_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[7]_inst_i_5 
       (.I0(\out_OBUF[13]_inst_i_7_n_0 ),
        .I1(\out_OBUF[9]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[11]_inst_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[7]_inst_i_8_n_0 ),
        .O(\out_OBUF[7]_inst_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \out_OBUF[7]_inst_i_6 
       (.CI(\out_OBUF[3]_inst_i_6_n_0 ),
        .CO({\out_OBUF[7]_inst_i_6_n_0 ,\NLW_out_OBUF[7]_inst_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[7:4]),
        .O({\out_OBUF[7]_inst_i_6_n_4 ,\out_OBUF[7]_inst_i_6_n_5 ,\out_OBUF[7]_inst_i_6_n_6 ,\out_OBUF[7]_inst_i_6_n_7 }),
        .S({\out_OBUF[7]_inst_i_9_n_0 ,\out_OBUF[7]_inst_i_10_n_0 ,\out_OBUF[7]_inst_i_11_n_0 ,\out_OBUF[7]_inst_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[7]_inst_i_7 
       (.I0(\out_OBUF[7]_inst_i_13_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[9]_inst_i_8_n_0 ),
        .O(\out_OBUF[7]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[7]_inst_i_8 
       (.I0(in_1_IBUF[31]),
        .I1(in_1_IBUF[15]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[23]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[7]),
        .O(\out_OBUF[7]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out_OBUF[7]_inst_i_9 
       (.I0(in_2_IBUF[7]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[7]),
        .O(\out_OBUF[7]_inst_i_9_n_0 ));
  OBUF \out_OBUF[8]_inst 
       (.I(out_OBUF[8]),
        .O(out[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[8]_inst_i_1 
       (.I0(\out_OBUF[8]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[8]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[8]_inst_i_4_n_0 ),
        .O(out_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[8]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[8]),
        .I2(in_2_IBUF[8]),
        .O(\out_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[8]_inst_i_3 
       (.I0(\out_OBUF[9]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[8]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[8]),
        .I5(in_1_IBUF[8]),
        .O(\out_OBUF[8]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[8]_inst_i_4 
       (.I0(\out_OBUF[11]_inst_i_6_n_7 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[9]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[8]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[8]_inst_i_5 
       (.I0(\out_OBUF[14]_inst_i_7_n_0 ),
        .I1(\out_OBUF[10]_inst_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[12]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[8]_inst_i_7_n_0 ),
        .O(\out_OBUF[8]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[8]_inst_i_6 
       (.I0(\out_OBUF[8]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[10]_inst_i_8_n_0 ),
        .O(\out_OBUF[8]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[8]_inst_i_7 
       (.I0(in_1_IBUF[16]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[24]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[8]),
        .O(\out_OBUF[8]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[8]_inst_i_8 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[5]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[8]_inst_i_8_n_0 ));
  OBUF \out_OBUF[9]_inst 
       (.I(out_OBUF[9]),
        .O(out[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \out_OBUF[9]_inst_i_1 
       (.I0(\out_OBUF[9]_inst_i_2_n_0 ),
        .I1(control_IBUF[1]),
        .I2(\out_OBUF[9]_inst_i_3_n_0 ),
        .I3(control_IBUF[2]),
        .I4(\out_OBUF[9]_inst_i_4_n_0 ),
        .O(out_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \out_OBUF[9]_inst_i_2 
       (.I0(control_IBUF[0]),
        .I1(in_1_IBUF[9]),
        .I2(in_2_IBUF[9]),
        .O(\out_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \out_OBUF[9]_inst_i_3 
       (.I0(\out_OBUF[10]_inst_i_5_n_0 ),
        .I1(in_2_IBUF[0]),
        .I2(\out_OBUF[9]_inst_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[9]),
        .I5(in_1_IBUF[9]),
        .O(\out_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \out_OBUF[9]_inst_i_4 
       (.I0(\out_OBUF[11]_inst_i_6_n_6 ),
        .I1(control_IBUF[0]),
        .I2(\out_OBUF[10]_inst_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out_OBUF[9]_inst_i_6_n_0 ),
        .I5(control_IBUF[1]),
        .O(\out_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out_OBUF[9]_inst_i_5 
       (.I0(\out_OBUF[15]_inst_i_8_n_0 ),
        .I1(\out_OBUF[11]_inst_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out_OBUF[13]_inst_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out_OBUF[9]_inst_i_7_n_0 ),
        .O(\out_OBUF[9]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out_OBUF[9]_inst_i_6 
       (.I0(\out_OBUF[9]_inst_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out_OBUF[11]_inst_i_13_n_0 ),
        .O(\out_OBUF[9]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out_OBUF[9]_inst_i_7 
       (.I0(in_1_IBUF[17]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[9]),
        .O(\out_OBUF[9]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \out_OBUF[9]_inst_i_8 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[6]),
        .I4(in_2_IBUF[3]),
        .O(\out_OBUF[9]_inst_i_8_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
