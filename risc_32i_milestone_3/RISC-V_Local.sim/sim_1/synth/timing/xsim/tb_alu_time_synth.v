// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec  7 17:16:15 2023
// Host        : DESKTOP-P0GG95G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/User/RISC-V_Local/RISC-V_Local.sim/sim_1/synth/timing/xsim/tb_alu_time_synth.v
// Design      : alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module alu
   (clk,
    control,
    in_1,
    in_2,
    out);
  input clk;
  input [3:0]control;
  input [31:0]in_1;
  input [31:0]in_2;
  output [31:0]out;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]control;
  wire [3:0]control_IBUF;
  wire [31:0]in_1;
  wire [31:0]in_1_IBUF;
  wire [31:0]in_2;
  wire [31:0]in_2_IBUF;
  wire [31:0]out;
  wire \out[0]_i_10_n_0 ;
  wire \out[0]_i_11_n_0 ;
  wire \out[0]_i_13_n_0 ;
  wire \out[0]_i_14_n_0 ;
  wire \out[0]_i_15_n_0 ;
  wire \out[0]_i_16_n_0 ;
  wire \out[0]_i_17_n_0 ;
  wire \out[0]_i_18_n_0 ;
  wire \out[0]_i_19_n_0 ;
  wire \out[0]_i_20_n_0 ;
  wire \out[0]_i_22_n_0 ;
  wire \out[0]_i_23_n_0 ;
  wire \out[0]_i_24_n_0 ;
  wire \out[0]_i_25_n_0 ;
  wire \out[0]_i_26_n_0 ;
  wire \out[0]_i_27_n_0 ;
  wire \out[0]_i_28_n_0 ;
  wire \out[0]_i_29_n_0 ;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_30_n_0 ;
  wire \out[0]_i_32_n_0 ;
  wire \out[0]_i_33_n_0 ;
  wire \out[0]_i_34_n_0 ;
  wire \out[0]_i_35_n_0 ;
  wire \out[0]_i_36_n_0 ;
  wire \out[0]_i_37_n_0 ;
  wire \out[0]_i_38_n_0 ;
  wire \out[0]_i_39_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[0]_i_41_n_0 ;
  wire \out[0]_i_42_n_0 ;
  wire \out[0]_i_43_n_0 ;
  wire \out[0]_i_44_n_0 ;
  wire \out[0]_i_45_n_0 ;
  wire \out[0]_i_46_n_0 ;
  wire \out[0]_i_47_n_0 ;
  wire \out[0]_i_48_n_0 ;
  wire \out[0]_i_4_n_0 ;
  wire \out[0]_i_50_n_0 ;
  wire \out[0]_i_51_n_0 ;
  wire \out[0]_i_52_n_0 ;
  wire \out[0]_i_53_n_0 ;
  wire \out[0]_i_54_n_0 ;
  wire \out[0]_i_55_n_0 ;
  wire \out[0]_i_56_n_0 ;
  wire \out[0]_i_57_n_0 ;
  wire \out[0]_i_59_n_0 ;
  wire \out[0]_i_60_n_0 ;
  wire \out[0]_i_61_n_0 ;
  wire \out[0]_i_62_n_0 ;
  wire \out[0]_i_63_n_0 ;
  wire \out[0]_i_64_n_0 ;
  wire \out[0]_i_65_n_0 ;
  wire \out[0]_i_66_n_0 ;
  wire \out[0]_i_67_n_0 ;
  wire \out[0]_i_68_n_0 ;
  wire \out[0]_i_69_n_0 ;
  wire \out[0]_i_70_n_0 ;
  wire \out[0]_i_71_n_0 ;
  wire \out[0]_i_72_n_0 ;
  wire \out[0]_i_73_n_0 ;
  wire \out[0]_i_74_n_0 ;
  wire \out[0]_i_75_n_0 ;
  wire \out[0]_i_76_n_0 ;
  wire \out[0]_i_77_n_0 ;
  wire \out[0]_i_78_n_0 ;
  wire \out[0]_i_79_n_0 ;
  wire \out[0]_i_7_n_0 ;
  wire \out[0]_i_80_n_0 ;
  wire \out[0]_i_81_n_0 ;
  wire \out[0]_i_82_n_0 ;
  wire \out[0]_i_8_n_0 ;
  wire \out[0]_i_9_n_0 ;
  wire \out[10]_i_2_n_0 ;
  wire \out[10]_i_4_n_0 ;
  wire \out[10]_i_5_n_0 ;
  wire \out[10]_i_7_n_0 ;
  wire \out[10]_i_8_n_0 ;
  wire \out[11]_i_10_n_0 ;
  wire \out[11]_i_11_n_0 ;
  wire \out[11]_i_12_n_0 ;
  wire \out[11]_i_13_n_0 ;
  wire \out[11]_i_2_n_0 ;
  wire \out[11]_i_4_n_0 ;
  wire \out[11]_i_5_n_0 ;
  wire \out[11]_i_7_n_0 ;
  wire \out[11]_i_8_n_0 ;
  wire \out[11]_i_9_n_0 ;
  wire \out[12]_i_2_n_0 ;
  wire \out[12]_i_4_n_0 ;
  wire \out[12]_i_5_n_0 ;
  wire \out[12]_i_7_n_0 ;
  wire \out[12]_i_8_n_0 ;
  wire \out[12]_i_9_n_0 ;
  wire \out[13]_i_2_n_0 ;
  wire \out[13]_i_4_n_0 ;
  wire \out[13]_i_5_n_0 ;
  wire \out[13]_i_6_n_0 ;
  wire \out[13]_i_7_n_0 ;
  wire \out[13]_i_8_n_0 ;
  wire \out[14]_i_2_n_0 ;
  wire \out[14]_i_4_n_0 ;
  wire \out[14]_i_5_n_0 ;
  wire \out[14]_i_7_n_0 ;
  wire \out[14]_i_8_n_0 ;
  wire \out[14]_i_9_n_0 ;
  wire \out[15]_i_10_n_0 ;
  wire \out[15]_i_11_n_0 ;
  wire \out[15]_i_12_n_0 ;
  wire \out[15]_i_13_n_0 ;
  wire \out[15]_i_2_n_0 ;
  wire \out[15]_i_4_n_0 ;
  wire \out[15]_i_5_n_0 ;
  wire \out[15]_i_7_n_0 ;
  wire \out[15]_i_8_n_0 ;
  wire \out[15]_i_9_n_0 ;
  wire \out[16]_i_2_n_0 ;
  wire \out[16]_i_4_n_0 ;
  wire \out[16]_i_5_n_0 ;
  wire \out[16]_i_6_n_0 ;
  wire \out[16]_i_7_n_0 ;
  wire \out[16]_i_8_n_0 ;
  wire \out[16]_i_9_n_0 ;
  wire \out[17]_i_2_n_0 ;
  wire \out[17]_i_4_n_0 ;
  wire \out[17]_i_5_n_0 ;
  wire \out[17]_i_6_n_0 ;
  wire \out[17]_i_7_n_0 ;
  wire \out[17]_i_8_n_0 ;
  wire \out[17]_i_9_n_0 ;
  wire \out[18]_i_10_n_0 ;
  wire \out[18]_i_2_n_0 ;
  wire \out[18]_i_4_n_0 ;
  wire \out[18]_i_5_n_0 ;
  wire \out[18]_i_7_n_0 ;
  wire \out[18]_i_8_n_0 ;
  wire \out[18]_i_9_n_0 ;
  wire \out[19]_i_10_n_0 ;
  wire \out[19]_i_11_n_0 ;
  wire \out[19]_i_12_n_0 ;
  wire \out[19]_i_13_n_0 ;
  wire \out[19]_i_14_n_0 ;
  wire \out[19]_i_2_n_0 ;
  wire \out[19]_i_4_n_0 ;
  wire \out[19]_i_5_n_0 ;
  wire \out[19]_i_7_n_0 ;
  wire \out[19]_i_8_n_0 ;
  wire \out[19]_i_9_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_4_n_0 ;
  wire \out[1]_i_5_n_0 ;
  wire \out[1]_i_6_n_0 ;
  wire \out[1]_i_7_n_0 ;
  wire \out[20]_i_2_n_0 ;
  wire \out[20]_i_4_n_0 ;
  wire \out[20]_i_5_n_0 ;
  wire \out[20]_i_7_n_0 ;
  wire \out[20]_i_8_n_0 ;
  wire \out[20]_i_9_n_0 ;
  wire \out[21]_i_2_n_0 ;
  wire \out[21]_i_4_n_0 ;
  wire \out[21]_i_5_n_0 ;
  wire \out[21]_i_6_n_0 ;
  wire \out[21]_i_7_n_0 ;
  wire \out[21]_i_8_n_0 ;
  wire \out[22]_i_2_n_0 ;
  wire \out[22]_i_4_n_0 ;
  wire \out[22]_i_5_n_0 ;
  wire \out[22]_i_7_n_0 ;
  wire \out[22]_i_8_n_0 ;
  wire \out[22]_i_9_n_0 ;
  wire \out[23]_i_10_n_0 ;
  wire \out[23]_i_11_n_0 ;
  wire \out[23]_i_12_n_0 ;
  wire \out[23]_i_13_n_0 ;
  wire \out[23]_i_2_n_0 ;
  wire \out[23]_i_4_n_0 ;
  wire \out[23]_i_5_n_0 ;
  wire \out[23]_i_7_n_0 ;
  wire \out[23]_i_8_n_0 ;
  wire \out[23]_i_9_n_0 ;
  wire \out[24]_i_2_n_0 ;
  wire \out[24]_i_4_n_0 ;
  wire \out[24]_i_5_n_0 ;
  wire \out[24]_i_6_n_0 ;
  wire \out[24]_i_7_n_0 ;
  wire \out[24]_i_8_n_0 ;
  wire \out[25]_i_2_n_0 ;
  wire \out[25]_i_4_n_0 ;
  wire \out[25]_i_5_n_0 ;
  wire \out[25]_i_6_n_0 ;
  wire \out[25]_i_7_n_0 ;
  wire \out[25]_i_8_n_0 ;
  wire \out[26]_i_2_n_0 ;
  wire \out[26]_i_4_n_0 ;
  wire \out[26]_i_6_n_0 ;
  wire \out[26]_i_8_n_0 ;
  wire \out[26]_i_9_n_0 ;
  wire \out[27]_i_10_n_0 ;
  wire \out[27]_i_11_n_0 ;
  wire \out[27]_i_12_n_0 ;
  wire \out[27]_i_13_n_0 ;
  wire \out[27]_i_14_n_0 ;
  wire \out[27]_i_15_n_0 ;
  wire \out[27]_i_2_n_0 ;
  wire \out[27]_i_4_n_0 ;
  wire \out[27]_i_5_n_0 ;
  wire \out[27]_i_6_n_0 ;
  wire \out[27]_i_8_n_0 ;
  wire \out[28]_i_2_n_0 ;
  wire \out[28]_i_3_n_0 ;
  wire \out[28]_i_5_n_0 ;
  wire \out[28]_i_6_n_0 ;
  wire \out[29]_i_2_n_0 ;
  wire \out[29]_i_3_n_0 ;
  wire \out[29]_i_5_n_0 ;
  wire \out[29]_i_6_n_0 ;
  wire \out[29]_i_7_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[2]_i_5_n_0 ;
  wire \out[2]_i_6_n_0 ;
  wire \out[2]_i_7_n_0 ;
  wire \out[2]_i_8_n_0 ;
  wire \out[30]_i_2_n_0 ;
  wire \out[30]_i_3_n_0 ;
  wire \out[30]_i_5_n_0 ;
  wire \out[30]_i_7_n_0 ;
  wire \out[30]_i_8_n_0 ;
  wire \out[30]_i_9_n_0 ;
  wire \out[31]_i_10_n_0 ;
  wire \out[31]_i_11_n_0 ;
  wire \out[31]_i_12_n_0 ;
  wire \out[31]_i_13_n_0 ;
  wire \out[31]_i_14_n_0 ;
  wire \out[31]_i_15_n_0 ;
  wire \out[31]_i_16_n_0 ;
  wire \out[31]_i_17_n_0 ;
  wire \out[31]_i_18_n_0 ;
  wire \out[31]_i_19_n_0 ;
  wire \out[31]_i_20_n_0 ;
  wire \out[31]_i_21_n_0 ;
  wire \out[31]_i_3_n_0 ;
  wire \out[31]_i_4_n_0 ;
  wire \out[31]_i_5_n_0 ;
  wire \out[31]_i_7_n_0 ;
  wire \out[31]_i_8_n_0 ;
  wire \out[31]_i_9_n_0 ;
  wire \out[3]_i_10_n_0 ;
  wire \out[3]_i_11_n_0 ;
  wire \out[3]_i_12_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_4_n_0 ;
  wire \out[3]_i_5_n_0 ;
  wire \out[3]_i_7_n_0 ;
  wire \out[3]_i_8_n_0 ;
  wire \out[3]_i_9_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_4_n_0 ;
  wire \out[4]_i_5_n_0 ;
  wire \out[4]_i_7_n_0 ;
  wire \out[4]_i_8_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_4_n_0 ;
  wire \out[5]_i_5_n_0 ;
  wire \out[5]_i_6_n_0 ;
  wire \out[5]_i_7_n_0 ;
  wire \out[6]_i_2_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[6]_i_5_n_0 ;
  wire \out[6]_i_7_n_0 ;
  wire \out[6]_i_8_n_0 ;
  wire \out[7]_i_10_n_0 ;
  wire \out[7]_i_11_n_0 ;
  wire \out[7]_i_12_n_0 ;
  wire \out[7]_i_13_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[7]_i_7_n_0 ;
  wire \out[7]_i_8_n_0 ;
  wire \out[7]_i_9_n_0 ;
  wire \out[8]_i_2_n_0 ;
  wire \out[8]_i_4_n_0 ;
  wire \out[8]_i_5_n_0 ;
  wire \out[8]_i_7_n_0 ;
  wire \out[8]_i_8_n_0 ;
  wire \out[8]_i_9_n_0 ;
  wire \out[9]_i_2_n_0 ;
  wire \out[9]_i_4_n_0 ;
  wire \out[9]_i_5_n_0 ;
  wire \out[9]_i_6_n_0 ;
  wire \out[9]_i_7_n_0 ;
  wire [31:0]out_OBUF;
  wire [31:31]out_pre_reg;
  wire [31:0]out_pre_reg0_in;
  wire \out_reg[0]_i_12_n_0 ;
  wire \out_reg[0]_i_12_n_1 ;
  wire \out_reg[0]_i_12_n_2 ;
  wire \out_reg[0]_i_12_n_3 ;
  wire \out_reg[0]_i_21_n_0 ;
  wire \out_reg[0]_i_21_n_1 ;
  wire \out_reg[0]_i_21_n_2 ;
  wire \out_reg[0]_i_21_n_3 ;
  wire \out_reg[0]_i_31_n_0 ;
  wire \out_reg[0]_i_31_n_1 ;
  wire \out_reg[0]_i_31_n_2 ;
  wire \out_reg[0]_i_31_n_3 ;
  wire \out_reg[0]_i_40_n_0 ;
  wire \out_reg[0]_i_40_n_1 ;
  wire \out_reg[0]_i_40_n_2 ;
  wire \out_reg[0]_i_40_n_3 ;
  wire \out_reg[0]_i_49_n_0 ;
  wire \out_reg[0]_i_49_n_1 ;
  wire \out_reg[0]_i_49_n_2 ;
  wire \out_reg[0]_i_49_n_3 ;
  wire \out_reg[0]_i_58_n_0 ;
  wire \out_reg[0]_i_58_n_1 ;
  wire \out_reg[0]_i_58_n_2 ;
  wire \out_reg[0]_i_58_n_3 ;
  wire \out_reg[0]_i_5_n_1 ;
  wire \out_reg[0]_i_5_n_2 ;
  wire \out_reg[0]_i_5_n_3 ;
  wire \out_reg[0]_i_6_n_1 ;
  wire \out_reg[0]_i_6_n_2 ;
  wire \out_reg[0]_i_6_n_3 ;
  wire \out_reg[11]_i_6_n_0 ;
  wire \out_reg[11]_i_6_n_1 ;
  wire \out_reg[11]_i_6_n_2 ;
  wire \out_reg[11]_i_6_n_3 ;
  wire \out_reg[11]_i_6_n_4 ;
  wire \out_reg[11]_i_6_n_5 ;
  wire \out_reg[11]_i_6_n_6 ;
  wire \out_reg[11]_i_6_n_7 ;
  wire \out_reg[15]_i_6_n_0 ;
  wire \out_reg[15]_i_6_n_1 ;
  wire \out_reg[15]_i_6_n_2 ;
  wire \out_reg[15]_i_6_n_3 ;
  wire \out_reg[15]_i_6_n_4 ;
  wire \out_reg[15]_i_6_n_5 ;
  wire \out_reg[15]_i_6_n_6 ;
  wire \out_reg[15]_i_6_n_7 ;
  wire \out_reg[19]_i_6_n_0 ;
  wire \out_reg[19]_i_6_n_1 ;
  wire \out_reg[19]_i_6_n_2 ;
  wire \out_reg[19]_i_6_n_3 ;
  wire \out_reg[19]_i_6_n_4 ;
  wire \out_reg[19]_i_6_n_5 ;
  wire \out_reg[19]_i_6_n_6 ;
  wire \out_reg[19]_i_6_n_7 ;
  wire \out_reg[23]_i_6_n_0 ;
  wire \out_reg[23]_i_6_n_1 ;
  wire \out_reg[23]_i_6_n_2 ;
  wire \out_reg[23]_i_6_n_3 ;
  wire \out_reg[23]_i_6_n_4 ;
  wire \out_reg[23]_i_6_n_5 ;
  wire \out_reg[23]_i_6_n_6 ;
  wire \out_reg[23]_i_6_n_7 ;
  wire \out_reg[27]_i_9_n_0 ;
  wire \out_reg[27]_i_9_n_1 ;
  wire \out_reg[27]_i_9_n_2 ;
  wire \out_reg[27]_i_9_n_3 ;
  wire \out_reg[27]_i_9_n_4 ;
  wire \out_reg[27]_i_9_n_5 ;
  wire \out_reg[27]_i_9_n_6 ;
  wire \out_reg[27]_i_9_n_7 ;
  wire \out_reg[31]_i_6_n_1 ;
  wire \out_reg[31]_i_6_n_2 ;
  wire \out_reg[31]_i_6_n_3 ;
  wire \out_reg[31]_i_6_n_4 ;
  wire \out_reg[31]_i_6_n_5 ;
  wire \out_reg[31]_i_6_n_6 ;
  wire \out_reg[31]_i_6_n_7 ;
  wire \out_reg[3]_i_6_n_0 ;
  wire \out_reg[3]_i_6_n_1 ;
  wire \out_reg[3]_i_6_n_2 ;
  wire \out_reg[3]_i_6_n_3 ;
  wire \out_reg[3]_i_6_n_4 ;
  wire \out_reg[3]_i_6_n_5 ;
  wire \out_reg[3]_i_6_n_6 ;
  wire \out_reg[3]_i_6_n_7 ;
  wire \out_reg[7]_i_6_n_0 ;
  wire \out_reg[7]_i_6_n_1 ;
  wire \out_reg[7]_i_6_n_2 ;
  wire \out_reg[7]_i_6_n_3 ;
  wire \out_reg[7]_i_6_n_4 ;
  wire \out_reg[7]_i_6_n_5 ;
  wire \out_reg[7]_i_6_n_6 ;
  wire \out_reg[7]_i_6_n_7 ;
  wire slt_out0;
  wire slt_out01_in;
  wire [30:1]sr_out;
  wire [29:3]sra_out0;
  wire [3:0]\NLW_out_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_31_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_40_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_58_O_UNCONNECTED ;
  wire [3:0]\NLW_out_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_out_reg[31]_i_6_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_alu_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[0]_i_10 
       (.I0(control_IBUF[0]),
        .I1(control_IBUF[1]),
        .O(\out[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \out[0]_i_11 
       (.I0(in_2_IBUF[0]),
        .I1(control_IBUF[0]),
        .O(\out[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_13 
       (.I0(in_2_IBUF[30]),
        .I1(in_1_IBUF[30]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[31]),
        .O(\out[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_14 
       (.I0(in_2_IBUF[28]),
        .I1(in_1_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_15 
       (.I0(in_2_IBUF[26]),
        .I1(in_1_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_16 
       (.I0(in_2_IBUF[24]),
        .I1(in_1_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_17 
       (.I0(in_2_IBUF[31]),
        .I1(in_1_IBUF[31]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[30]),
        .O(\out[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_18 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[29]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[28]),
        .O(\out[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_19 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[27]),
        .I2(in_1_IBUF[26]),
        .I3(in_2_IBUF[26]),
        .O(\out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFAEAAFEAAA)) 
    \out[0]_i_2 
       (.I0(\out[0]_i_4_n_0 ),
        .I1(slt_out01_in),
        .I2(control_IBUF[1]),
        .I3(control_IBUF[0]),
        .I4(\out_reg[3]_i_6_n_7 ),
        .I5(slt_out0),
        .O(\out[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_20 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[25]),
        .I2(in_1_IBUF[24]),
        .I3(in_2_IBUF[24]),
        .O(\out[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_22 
       (.I0(in_2_IBUF[30]),
        .I1(in_1_IBUF[30]),
        .I2(in_2_IBUF[31]),
        .I3(in_1_IBUF[31]),
        .O(\out[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_23 
       (.I0(in_2_IBUF[28]),
        .I1(in_1_IBUF[28]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[29]),
        .O(\out[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_24 
       (.I0(in_2_IBUF[26]),
        .I1(in_1_IBUF[26]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[27]),
        .O(\out[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_25 
       (.I0(in_2_IBUF[24]),
        .I1(in_1_IBUF[24]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[25]),
        .O(\out[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_26 
       (.I0(in_2_IBUF[31]),
        .I1(in_1_IBUF[31]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[30]),
        .O(\out[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_27 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[29]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[28]),
        .O(\out[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_28 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[27]),
        .I2(in_1_IBUF[26]),
        .I3(in_2_IBUF[26]),
        .O(\out[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_29 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[25]),
        .I2(in_1_IBUF[24]),
        .I3(in_2_IBUF[24]),
        .O(\out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEAEAAAAAAAA)) 
    \out[0]_i_3 
       (.I0(\out[0]_i_7_n_0 ),
        .I1(\out[0]_i_8_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out[1]_i_5_n_0 ),
        .I4(\out[0]_i_9_n_0 ),
        .I5(\out[0]_i_10_n_0 ),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[0]_i_30 
       (.I0(in_1_IBUF[0]),
        .I1(in_1_IBUF[16]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[24]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[8]),
        .O(\out[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_32 
       (.I0(in_2_IBUF[22]),
        .I1(in_1_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_33 
       (.I0(in_2_IBUF[20]),
        .I1(in_1_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_34 
       (.I0(in_2_IBUF[18]),
        .I1(in_1_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_35 
       (.I0(in_2_IBUF[16]),
        .I1(in_1_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_36 
       (.I0(in_1_IBUF[23]),
        .I1(in_2_IBUF[23]),
        .I2(in_1_IBUF[22]),
        .I3(in_2_IBUF[22]),
        .O(\out[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_37 
       (.I0(in_1_IBUF[21]),
        .I1(in_2_IBUF[21]),
        .I2(in_1_IBUF[20]),
        .I3(in_2_IBUF[20]),
        .O(\out[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_38 
       (.I0(in_1_IBUF[19]),
        .I1(in_2_IBUF[19]),
        .I2(in_1_IBUF[18]),
        .I3(in_2_IBUF[18]),
        .O(\out[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_39 
       (.I0(in_1_IBUF[17]),
        .I1(in_2_IBUF[17]),
        .I2(in_1_IBUF[16]),
        .I3(in_2_IBUF[16]),
        .O(\out[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \out[0]_i_4 
       (.I0(control_IBUF[1]),
        .I1(\out[0]_i_11_n_0 ),
        .I2(in_1_IBUF[0]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(in_2_IBUF[2]),
        .O(\out[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_41 
       (.I0(in_2_IBUF[22]),
        .I1(in_1_IBUF[22]),
        .I2(in_1_IBUF[23]),
        .I3(in_2_IBUF[23]),
        .O(\out[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_42 
       (.I0(in_2_IBUF[20]),
        .I1(in_1_IBUF[20]),
        .I2(in_1_IBUF[21]),
        .I3(in_2_IBUF[21]),
        .O(\out[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_43 
       (.I0(in_2_IBUF[18]),
        .I1(in_1_IBUF[18]),
        .I2(in_1_IBUF[19]),
        .I3(in_2_IBUF[19]),
        .O(\out[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_44 
       (.I0(in_2_IBUF[16]),
        .I1(in_1_IBUF[16]),
        .I2(in_1_IBUF[17]),
        .I3(in_2_IBUF[17]),
        .O(\out[0]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_45 
       (.I0(in_1_IBUF[23]),
        .I1(in_2_IBUF[23]),
        .I2(in_1_IBUF[22]),
        .I3(in_2_IBUF[22]),
        .O(\out[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_46 
       (.I0(in_1_IBUF[21]),
        .I1(in_2_IBUF[21]),
        .I2(in_1_IBUF[20]),
        .I3(in_2_IBUF[20]),
        .O(\out[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_47 
       (.I0(in_1_IBUF[19]),
        .I1(in_2_IBUF[19]),
        .I2(in_1_IBUF[18]),
        .I3(in_2_IBUF[18]),
        .O(\out[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_48 
       (.I0(in_1_IBUF[17]),
        .I1(in_2_IBUF[17]),
        .I2(in_1_IBUF[16]),
        .I3(in_2_IBUF[16]),
        .O(\out[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_50 
       (.I0(in_2_IBUF[14]),
        .I1(in_1_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_51 
       (.I0(in_2_IBUF[12]),
        .I1(in_1_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_52 
       (.I0(in_2_IBUF[10]),
        .I1(in_1_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_53 
       (.I0(in_2_IBUF[8]),
        .I1(in_1_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_54 
       (.I0(in_1_IBUF[15]),
        .I1(in_2_IBUF[15]),
        .I2(in_1_IBUF[14]),
        .I3(in_2_IBUF[14]),
        .O(\out[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_55 
       (.I0(in_1_IBUF[13]),
        .I1(in_2_IBUF[13]),
        .I2(in_1_IBUF[12]),
        .I3(in_2_IBUF[12]),
        .O(\out[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_56 
       (.I0(in_1_IBUF[11]),
        .I1(in_2_IBUF[11]),
        .I2(in_1_IBUF[10]),
        .I3(in_2_IBUF[10]),
        .O(\out[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_57 
       (.I0(in_1_IBUF[9]),
        .I1(in_2_IBUF[9]),
        .I2(in_1_IBUF[8]),
        .I3(in_2_IBUF[8]),
        .O(\out[0]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_59 
       (.I0(in_2_IBUF[14]),
        .I1(in_1_IBUF[14]),
        .I2(in_1_IBUF[15]),
        .I3(in_2_IBUF[15]),
        .O(\out[0]_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_60 
       (.I0(in_2_IBUF[12]),
        .I1(in_1_IBUF[12]),
        .I2(in_1_IBUF[13]),
        .I3(in_2_IBUF[13]),
        .O(\out[0]_i_60_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_61 
       (.I0(in_2_IBUF[10]),
        .I1(in_1_IBUF[10]),
        .I2(in_1_IBUF[11]),
        .I3(in_2_IBUF[11]),
        .O(\out[0]_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_62 
       (.I0(in_2_IBUF[8]),
        .I1(in_1_IBUF[8]),
        .I2(in_1_IBUF[9]),
        .I3(in_2_IBUF[9]),
        .O(\out[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_63 
       (.I0(in_1_IBUF[15]),
        .I1(in_2_IBUF[15]),
        .I2(in_1_IBUF[14]),
        .I3(in_2_IBUF[14]),
        .O(\out[0]_i_63_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_64 
       (.I0(in_1_IBUF[13]),
        .I1(in_2_IBUF[13]),
        .I2(in_1_IBUF[12]),
        .I3(in_2_IBUF[12]),
        .O(\out[0]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_65 
       (.I0(in_1_IBUF[11]),
        .I1(in_2_IBUF[11]),
        .I2(in_1_IBUF[10]),
        .I3(in_2_IBUF[10]),
        .O(\out[0]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_66 
       (.I0(in_1_IBUF[9]),
        .I1(in_2_IBUF[9]),
        .I2(in_1_IBUF[8]),
        .I3(in_2_IBUF[8]),
        .O(\out[0]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_67 
       (.I0(in_2_IBUF[6]),
        .I1(in_1_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out[0]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_68 
       (.I0(in_2_IBUF[4]),
        .I1(in_1_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_69 
       (.I0(in_2_IBUF[2]),
        .I1(in_1_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out[0]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[0]_i_7 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[0]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_70 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out[0]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_71 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[7]),
        .I2(in_1_IBUF[6]),
        .I3(in_2_IBUF[6]),
        .O(\out[0]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_72 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[5]),
        .I2(in_1_IBUF[4]),
        .I3(in_2_IBUF[4]),
        .O(\out[0]_i_72_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_73 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[2]),
        .O(\out[0]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_74 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out[0]_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_75 
       (.I0(in_2_IBUF[6]),
        .I1(in_1_IBUF[6]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[7]),
        .O(\out[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_76 
       (.I0(in_2_IBUF[4]),
        .I1(in_1_IBUF[4]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[5]),
        .O(\out[0]_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_77 
       (.I0(in_2_IBUF[2]),
        .I1(in_1_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .O(\out[0]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \out[0]_i_78 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out[0]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_79 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[7]),
        .I2(in_1_IBUF[6]),
        .I3(in_2_IBUF[6]),
        .O(\out[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[0]_i_8 
       (.I0(\out[0]_i_30_n_0 ),
        .I1(\out[4]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[6]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[2]_i_8_n_0 ),
        .O(\out[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_80 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[5]),
        .I2(in_1_IBUF[4]),
        .I3(in_2_IBUF[4]),
        .O(\out[0]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_81 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[2]),
        .O(\out[0]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \out[0]_i_82 
       (.I0(in_2_IBUF[0]),
        .I1(in_1_IBUF[0]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[1]),
        .O(\out[0]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[0]_i_9 
       (.I0(in_2_IBUF[0]),
        .I1(\out[27]_i_6_n_0 ),
        .I2(in_2_IBUF[2]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_2_IBUF[1]),
        .O(\out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[10]_i_1 
       (.I0(\out[10]_i_2_n_0 ),
        .I1(sr_out[10]),
        .I2(control_IBUF[0]),
        .I3(\out[10]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[10]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[10]_i_2 
       (.I0(in_2_IBUF[10]),
        .I1(in_1_IBUF[10]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[10]_i_3 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(sra_out0[11]),
        .I2(\out[10]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[9]),
        .O(sr_out[10]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[10]_i_4 
       (.I0(\out_reg[11]_i_6_n_5 ),
        .I1(\out[11]_i_7_n_0 ),
        .I2(\out[10]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[10]_i_5 
       (.I0(\out[16]_i_8_n_0 ),
        .I1(\out[12]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[14]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[10]_i_8_n_0 ),
        .O(\out[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \out[10]_i_6 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .O(sra_out0[9]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[10]_i_7 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[7]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[12]_i_9_n_0 ),
        .O(\out[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[10]_i_8 
       (.I0(in_1_IBUF[18]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[26]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[10]),
        .O(\out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[11]_i_1 
       (.I0(\out[11]_i_2_n_0 ),
        .I1(sr_out[11]),
        .I2(control_IBUF[0]),
        .I3(\out[11]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[11]_i_10 
       (.I0(in_2_IBUF[10]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[10]),
        .O(\out[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[11]_i_11 
       (.I0(in_2_IBUF[9]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[9]),
        .O(\out[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[11]_i_12 
       (.I0(in_2_IBUF[8]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[8]),
        .O(\out[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[11]_i_13 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[8]),
        .O(\out[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[11]_i_2 
       (.I0(in_2_IBUF[11]),
        .I1(in_1_IBUF[11]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[11]_i_3 
       (.I0(\out[11]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[11]),
        .I4(in_2_IBUF[0]),
        .I5(\out[12]_i_5_n_0 ),
        .O(sr_out[11]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[11]_i_4 
       (.I0(\out_reg[11]_i_6_n_4 ),
        .I1(\out[12]_i_7_n_0 ),
        .I2(\out[11]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[11]_i_5 
       (.I0(\out[17]_i_8_n_0 ),
        .I1(\out[13]_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[15]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[11]_i_8_n_0 ),
        .O(\out[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[11]_i_7 
       (.I0(\out[11]_i_13_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[13]_i_8_n_0 ),
        .O(\out[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[11]_i_8 
       (.I0(in_1_IBUF[19]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[27]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[11]),
        .O(\out[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[11]_i_9 
       (.I0(in_2_IBUF[11]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[11]),
        .O(\out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[12]_i_1 
       (.I0(\out[12]_i_2_n_0 ),
        .I1(sr_out[12]),
        .I2(control_IBUF[0]),
        .I3(\out[12]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[12]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[12]_i_2 
       (.I0(in_2_IBUF[12]),
        .I1(in_1_IBUF[12]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[12]_i_3 
       (.I0(\out[13]_i_5_n_0 ),
        .I1(sra_out0[13]),
        .I2(\out[12]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[11]),
        .O(sr_out[12]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[12]_i_4 
       (.I0(\out_reg[15]_i_6_n_7 ),
        .I1(\out[13]_i_6_n_0 ),
        .I2(\out[12]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[12]_i_5 
       (.I0(\out[18]_i_9_n_0 ),
        .I1(\out[14]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[16]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[12]_i_8_n_0 ),
        .O(\out[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \out[12]_i_6 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(sra_out0[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[12]_i_7 
       (.I0(\out[12]_i_9_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[14]_i_9_n_0 ),
        .O(\out[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[12]_i_8 
       (.I0(in_1_IBUF[20]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[12]),
        .O(\out[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[12]_i_9 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[9]),
        .O(\out[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[13]_i_1 
       (.I0(\out[13]_i_2_n_0 ),
        .I1(sr_out[13]),
        .I2(control_IBUF[0]),
        .I3(\out[13]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[13]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[13]_i_2 
       (.I0(in_2_IBUF[13]),
        .I1(in_1_IBUF[13]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[13]_i_3 
       (.I0(\out[13]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[13]),
        .I4(in_2_IBUF[0]),
        .I5(\out[14]_i_5_n_0 ),
        .O(sr_out[13]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[13]_i_4 
       (.I0(\out_reg[15]_i_6_n_6 ),
        .I1(\out[14]_i_7_n_0 ),
        .I2(\out[13]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[13]_i_5 
       (.I0(\out[19]_i_9_n_0 ),
        .I1(\out[15]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[17]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[13]_i_7_n_0 ),
        .O(\out[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[13]_i_6 
       (.I0(\out[13]_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[15]_i_13_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out[19]_i_14_n_0 ),
        .O(\out[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[13]_i_7 
       (.I0(in_1_IBUF[21]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[13]),
        .O(\out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[13]_i_8 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[10]),
        .O(\out[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[14]_i_1 
       (.I0(\out[14]_i_2_n_0 ),
        .I1(sr_out[14]),
        .I2(control_IBUF[0]),
        .I3(\out[14]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[14]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[14]_i_2 
       (.I0(in_2_IBUF[14]),
        .I1(in_1_IBUF[14]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[14]_i_3 
       (.I0(\out[15]_i_5_n_0 ),
        .I1(in_2_IBUF[4]),
        .I2(\out[14]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[13]),
        .O(sr_out[14]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[14]_i_4 
       (.I0(\out_reg[15]_i_6_n_5 ),
        .I1(\out[15]_i_7_n_0 ),
        .I2(\out[14]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[14]_i_5 
       (.I0(\out[16]_i_7_n_0 ),
        .I1(\out[16]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[18]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[14]_i_8_n_0 ),
        .O(\out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \out[14]_i_6 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .O(sra_out0[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[14]_i_7 
       (.I0(\out[14]_i_9_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[16]_i_9_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out[20]_i_9_n_0 ),
        .O(\out[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[14]_i_8 
       (.I0(in_1_IBUF[22]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[14]),
        .O(\out[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[14]_i_9 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[11]),
        .O(\out[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[15]_i_1 
       (.I0(\out[15]_i_2_n_0 ),
        .I1(sr_out[15]),
        .I2(control_IBUF[0]),
        .I3(\out[15]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[15]_i_10 
       (.I0(in_2_IBUF[14]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[14]),
        .O(\out[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[15]_i_11 
       (.I0(in_2_IBUF[13]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[13]),
        .O(\out[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[15]_i_12 
       (.I0(in_2_IBUF[12]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[12]),
        .O(\out[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[15]_i_13 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[8]),
        .O(\out[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[15]_i_2 
       (.I0(in_2_IBUF[15]),
        .I1(in_1_IBUF[15]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[15]_i_3 
       (.I0(\out[15]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[0]),
        .I5(\out[16]_i_5_n_0 ),
        .O(sr_out[15]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[15]_i_4 
       (.I0(\out_reg[15]_i_6_n_4 ),
        .I1(\out[16]_i_6_n_0 ),
        .I2(\out[15]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_5 
       (.I0(\out[17]_i_7_n_0 ),
        .I1(\out[17]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[19]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[15]_i_8_n_0 ),
        .O(\out[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[15]_i_7 
       (.I0(\out[15]_i_13_n_0 ),
        .I1(\out[19]_i_14_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[17]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[21]_i_8_n_0 ),
        .O(\out[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[15]_i_8 
       (.I0(in_1_IBUF[23]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[15]),
        .O(\out[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[15]_i_9 
       (.I0(in_2_IBUF[15]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[15]),
        .O(\out[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[16]_i_1 
       (.I0(\out[16]_i_2_n_0 ),
        .I1(sr_out[16]),
        .I2(control_IBUF[0]),
        .I3(\out[16]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[16]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[16]_i_2 
       (.I0(in_2_IBUF[16]),
        .I1(in_1_IBUF[16]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[16]_i_3 
       (.I0(\out[17]_i_5_n_0 ),
        .I1(sra_out0[17]),
        .I2(\out[16]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(in_2_IBUF[4]),
        .O(sr_out[16]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[16]_i_4 
       (.I0(\out_reg[19]_i_6_n_7 ),
        .I1(\out[17]_i_6_n_0 ),
        .I2(\out[16]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[16]_i_5 
       (.I0(\out[18]_i_8_n_0 ),
        .I1(\out[18]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[16]_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[16]_i_8_n_0 ),
        .O(\out[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[16]_i_6 
       (.I0(\out[16]_i_9_n_0 ),
        .I1(\out[20]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[18]_i_10_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[22]_i_9_n_0 ),
        .O(\out[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[16]_i_7 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[20]),
        .O(\out[16]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[16]_i_8 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[16]),
        .O(\out[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[16]_i_9 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[9]),
        .O(\out[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[17]_i_1 
       (.I0(\out[17]_i_2_n_0 ),
        .I1(sr_out[17]),
        .I2(control_IBUF[0]),
        .I3(\out[17]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[17]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[17]_i_2 
       (.I0(in_2_IBUF[17]),
        .I1(in_1_IBUF[17]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[17]_i_3 
       (.I0(\out[17]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[17]),
        .I4(in_2_IBUF[0]),
        .I5(\out[18]_i_5_n_0 ),
        .O(sr_out[17]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[17]_i_4 
       (.I0(\out_reg[19]_i_6_n_6 ),
        .I1(\out[18]_i_7_n_0 ),
        .I2(\out[17]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[17]_i_5 
       (.I0(\out[19]_i_8_n_0 ),
        .I1(\out[19]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[17]_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[17]_i_8_n_0 ),
        .O(\out[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[17]_i_6 
       (.I0(\out[17]_i_9_n_0 ),
        .I1(\out[21]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[19]_i_14_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[23]_i_13_n_0 ),
        .O(\out[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[17]_i_7 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[21]),
        .O(\out[17]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[17]_i_8 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[17]),
        .O(\out[17]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[17]_i_9 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[10]),
        .O(\out[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[18]_i_1 
       (.I0(\out[18]_i_2_n_0 ),
        .I1(sr_out[18]),
        .I2(control_IBUF[0]),
        .I3(\out[18]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[18]_i_10 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[11]),
        .O(\out[18]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[18]_i_2 
       (.I0(in_2_IBUF[18]),
        .I1(in_1_IBUF[18]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[18]_i_3 
       (.I0(\out[19]_i_5_n_0 ),
        .I1(sra_out0[19]),
        .I2(\out[18]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[17]),
        .O(sr_out[18]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[18]_i_4 
       (.I0(\out_reg[19]_i_6_n_5 ),
        .I1(\out[19]_i_7_n_0 ),
        .I2(\out[18]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[18]_i_5 
       (.I0(\out[20]_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[18]_i_8_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out[18]_i_9_n_0 ),
        .O(\out[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \out[18]_i_6 
       (.I0(in_2_IBUF[3]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[1]),
        .I3(in_2_IBUF[4]),
        .O(sra_out0[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[18]_i_7 
       (.I0(\out[18]_i_10_n_0 ),
        .I1(\out[22]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[20]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[24]_i_8_n_0 ),
        .O(\out[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[18]_i_8 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[22]),
        .O(\out[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[18]_i_9 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[18]),
        .O(\out[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[19]_i_1 
       (.I0(\out[19]_i_2_n_0 ),
        .I1(sr_out[19]),
        .I2(control_IBUF[0]),
        .I3(\out[19]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[19]_i_10 
       (.I0(in_2_IBUF[19]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[19]),
        .O(\out[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[19]_i_11 
       (.I0(in_2_IBUF[18]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[18]),
        .O(\out[19]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[19]_i_12 
       (.I0(in_2_IBUF[17]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[17]),
        .O(\out[19]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[19]_i_13 
       (.I0(in_2_IBUF[16]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[16]),
        .O(\out[19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[19]_i_14 
       (.I0(in_1_IBUF[4]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[12]),
        .O(\out[19]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[19]_i_2 
       (.I0(in_2_IBUF[19]),
        .I1(in_1_IBUF[19]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[19]_i_3 
       (.I0(\out[19]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[19]),
        .I4(in_2_IBUF[0]),
        .I5(\out[20]_i_5_n_0 ),
        .O(sr_out[19]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[19]_i_4 
       (.I0(\out_reg[19]_i_6_n_4 ),
        .I1(\out[20]_i_7_n_0 ),
        .I2(\out[19]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \out[19]_i_5 
       (.I0(\out[21]_i_7_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[19]_i_8_n_0 ),
        .I3(in_2_IBUF[2]),
        .I4(\out[19]_i_9_n_0 ),
        .O(\out[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[19]_i_7 
       (.I0(\out[19]_i_14_n_0 ),
        .I1(\out[23]_i_13_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[21]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[25]_i_8_n_0 ),
        .O(\out[19]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[19]_i_8 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[23]),
        .O(\out[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[19]_i_9 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[19]),
        .O(\out[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[1]_i_1 
       (.I0(\out[1]_i_2_n_0 ),
        .I1(sr_out[1]),
        .I2(control_IBUF[0]),
        .I3(\out[1]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[1]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[1]_i_2 
       (.I0(in_2_IBUF[1]),
        .I1(in_1_IBUF[1]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[1]_i_3 
       (.I0(\out[1]_i_5_n_0 ),
        .I1(\out[27]_i_6_n_0 ),
        .I2(sra_out0[3]),
        .I3(in_2_IBUF[1]),
        .I4(in_2_IBUF[0]),
        .I5(\out[2]_i_5_n_0 ),
        .O(sr_out[1]));
  LUT6 #(
    .INIT(64'hF000AAAAC0C0AAAA)) 
    \out[1]_i_4 
       (.I0(\out_reg[3]_i_6_n_6 ),
        .I1(\out[2]_i_6_n_0 ),
        .I2(\out[2]_i_7_n_0 ),
        .I3(\out[1]_i_6_n_0 ),
        .I4(control_IBUF[0]),
        .I5(in_2_IBUF[0]),
        .O(\out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[1]_i_5 
       (.I0(\out[1]_i_7_n_0 ),
        .I1(\out[5]_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[7]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[3]_i_8_n_0 ),
        .O(\out[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out[1]_i_6 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(\out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[1]_i_7 
       (.I0(in_1_IBUF[1]),
        .I1(in_1_IBUF[17]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[25]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[9]),
        .O(\out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[20]_i_1 
       (.I0(\out[20]_i_2_n_0 ),
        .I1(sr_out[20]),
        .I2(control_IBUF[0]),
        .I3(\out[20]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[20]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[20]_i_2 
       (.I0(in_2_IBUF[20]),
        .I1(in_1_IBUF[20]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[20]_i_3 
       (.I0(\out[21]_i_5_n_0 ),
        .I1(sra_out0[21]),
        .I2(\out[20]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[19]),
        .O(sr_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[20]_i_4 
       (.I0(\out_reg[23]_i_6_n_7 ),
        .I1(\out[21]_i_6_n_0 ),
        .I2(\out[20]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[20]_i_5 
       (.I0(\out[22]_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[20]_i_8_n_0 ),
        .O(\out[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \out[20]_i_6 
       (.I0(in_2_IBUF[3]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .O(sra_out0[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[20]_i_7 
       (.I0(\out[20]_i_9_n_0 ),
        .I1(\out[24]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[22]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[26]_i_9_n_0 ),
        .O(\out[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[20]_i_8 
       (.I0(in_1_IBUF[24]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[28]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[20]),
        .O(\out[20]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[20]_i_9 
       (.I0(in_1_IBUF[5]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[13]),
        .O(\out[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[21]_i_1 
       (.I0(\out[21]_i_2_n_0 ),
        .I1(sr_out[21]),
        .I2(control_IBUF[0]),
        .I3(\out[21]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[21]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[21]_i_2 
       (.I0(in_2_IBUF[21]),
        .I1(in_1_IBUF[21]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[21]_i_3 
       (.I0(\out[21]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[21]),
        .I4(in_2_IBUF[0]),
        .I5(\out[22]_i_5_n_0 ),
        .O(sr_out[21]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[21]_i_4 
       (.I0(\out_reg[23]_i_6_n_6 ),
        .I1(\out[22]_i_7_n_0 ),
        .I2(\out[21]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[21]_i_5 
       (.I0(\out[23]_i_8_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[21]_i_7_n_0 ),
        .O(\out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[21]_i_6 
       (.I0(\out[21]_i_8_n_0 ),
        .I1(\out[25]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[23]_i_13_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[27]_i_15_n_0 ),
        .O(\out[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[21]_i_7 
       (.I0(in_1_IBUF[25]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[29]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[21]),
        .O(\out[21]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[21]_i_8 
       (.I0(in_1_IBUF[6]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[14]),
        .O(\out[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[22]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(sr_out[22]),
        .I2(control_IBUF[0]),
        .I3(\out[22]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[22]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[22]_i_2 
       (.I0(in_2_IBUF[22]),
        .I1(in_1_IBUF[22]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[22]_i_3 
       (.I0(\out[23]_i_5_n_0 ),
        .I1(sra_out0[23]),
        .I2(\out[22]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[21]),
        .O(sr_out[22]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[22]_i_4 
       (.I0(\out_reg[23]_i_6_n_5 ),
        .I1(\out[23]_i_7_n_0 ),
        .I2(\out[22]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[22]_i_5 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[24]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[22]_i_8_n_0 ),
        .O(\out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \out[22]_i_6 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[2]),
        .I3(in_2_IBUF[4]),
        .O(sra_out0[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[22]_i_7 
       (.I0(\out[22]_i_9_n_0 ),
        .I1(\out[26]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[24]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[28]_i_6_n_0 ),
        .O(\out[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[22]_i_8 
       (.I0(in_1_IBUF[26]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[22]),
        .O(\out[22]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \out[22]_i_9 
       (.I0(in_1_IBUF[7]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_1_IBUF[15]),
        .O(\out[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[23]_i_1 
       (.I0(\out[23]_i_2_n_0 ),
        .I1(sr_out[23]),
        .I2(control_IBUF[0]),
        .I3(\out[23]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[23]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[23]_i_10 
       (.I0(in_2_IBUF[22]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[22]),
        .O(\out[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[23]_i_11 
       (.I0(in_2_IBUF[21]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[21]),
        .O(\out[23]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[23]_i_12 
       (.I0(in_2_IBUF[20]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[20]),
        .O(\out[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[23]_i_13 
       (.I0(in_1_IBUF[8]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[16]),
        .O(\out[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[23]_i_2 
       (.I0(in_2_IBUF[23]),
        .I1(in_1_IBUF[23]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[23]_i_3 
       (.I0(\out[23]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[0]),
        .I5(\out[24]_i_5_n_0 ),
        .O(sr_out[23]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[23]_i_4 
       (.I0(\out_reg[23]_i_6_n_4 ),
        .I1(\out[24]_i_6_n_0 ),
        .I2(\out[23]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[23]_i_5 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[25]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[23]_i_8_n_0 ),
        .O(\out[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[23]_i_7 
       (.I0(\out[23]_i_13_n_0 ),
        .I1(\out[27]_i_15_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[25]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[29]_i_7_n_0 ),
        .O(\out[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000030BB00003088)) 
    \out[23]_i_8 
       (.I0(in_1_IBUF[27]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[23]),
        .O(\out[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[23]_i_9 
       (.I0(in_2_IBUF[23]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[23]),
        .O(\out[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[24]_i_1 
       (.I0(\out[24]_i_2_n_0 ),
        .I1(sr_out[24]),
        .I2(control_IBUF[0]),
        .I3(\out[24]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[24]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[24]_i_2 
       (.I0(in_2_IBUF[24]),
        .I1(in_1_IBUF[24]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[24]_i_3 
       (.I0(\out[25]_i_5_n_0 ),
        .I1(sra_out0[25]),
        .I2(\out[24]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[23]),
        .O(sr_out[24]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[24]_i_4 
       (.I0(\out_reg[27]_i_9_n_7 ),
        .I1(\out[25]_i_6_n_0 ),
        .I2(\out[24]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[24]_i_5 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[26]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[24]_i_7_n_0 ),
        .O(\out[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[24]_i_6 
       (.I0(\out[24]_i_8_n_0 ),
        .I1(\out[28]_i_6_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[26]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[30]_i_9_n_0 ),
        .O(\out[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \out[24]_i_7 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[24]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[3]),
        .O(\out[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[24]_i_8 
       (.I0(in_1_IBUF[9]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[17]),
        .O(\out[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[25]_i_1 
       (.I0(\out[25]_i_2_n_0 ),
        .I1(sr_out[25]),
        .I2(control_IBUF[0]),
        .I3(\out[25]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[25]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[25]_i_2 
       (.I0(in_2_IBUF[25]),
        .I1(in_1_IBUF[25]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[25]_i_3 
       (.I0(\out[25]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[25]),
        .I4(in_2_IBUF[0]),
        .I5(\out[26]_i_6_n_0 ),
        .O(sr_out[25]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[25]_i_4 
       (.I0(\out_reg[27]_i_9_n_6 ),
        .I1(\out[26]_i_8_n_0 ),
        .I2(\out[25]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[25]_i_5 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[27]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[25]_i_7_n_0 ),
        .O(\out[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[25]_i_6 
       (.I0(\out[25]_i_8_n_0 ),
        .I1(\out[29]_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[27]_i_15_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_20_n_0 ),
        .O(\out[25]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \out[25]_i_7 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[3]),
        .O(\out[25]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[25]_i_8 
       (.I0(in_1_IBUF[10]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[18]),
        .O(\out[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[26]_i_1 
       (.I0(\out[26]_i_2_n_0 ),
        .I1(sr_out[26]),
        .I2(control_IBUF[0]),
        .I3(\out[26]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[26]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[26]_i_2 
       (.I0(in_2_IBUF[26]),
        .I1(in_1_IBUF[26]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[26]_i_3 
       (.I0(\out[27]_i_5_n_0 ),
        .I1(sra_out0[27]),
        .I2(\out[26]_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[25]),
        .O(sr_out[26]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[26]_i_4 
       (.I0(\out_reg[27]_i_9_n_5 ),
        .I1(\out[27]_i_10_n_0 ),
        .I2(\out[26]_i_8_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[26]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[26]_i_5 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(sra_out0[27]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out[26]_i_6 
       (.I0(in_1_IBUF[28]),
        .I1(in_2_IBUF[1]),
        .I2(in_1_IBUF[30]),
        .I3(in_2_IBUF[2]),
        .I4(in_1_IBUF[26]),
        .I5(sra_out0[23]),
        .O(\out[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \out[26]_i_7 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .O(sra_out0[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[26]_i_8 
       (.I0(\out[26]_i_9_n_0 ),
        .I1(\out[30]_i_9_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[28]_i_6_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_16_n_0 ),
        .O(\out[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[26]_i_9 
       (.I0(in_1_IBUF[11]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[19]),
        .O(\out[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[27]_i_1 
       (.I0(\out[27]_i_2_n_0 ),
        .I1(sr_out[27]),
        .I2(control_IBUF[0]),
        .I3(\out[27]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[27]_i_10 
       (.I0(\out[27]_i_15_n_0 ),
        .I1(\out[31]_i_20_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[29]_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_19_n_0 ),
        .O(\out[27]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[27]_i_11 
       (.I0(in_2_IBUF[27]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[27]),
        .O(\out[27]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[27]_i_12 
       (.I0(in_2_IBUF[26]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[26]),
        .O(\out[27]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[27]_i_13 
       (.I0(in_2_IBUF[25]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[25]),
        .O(\out[27]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[27]_i_14 
       (.I0(in_2_IBUF[24]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[24]),
        .O(\out[27]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[27]_i_15 
       (.I0(in_1_IBUF[12]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[4]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[20]),
        .O(\out[27]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[27]_i_2 
       (.I0(in_2_IBUF[27]),
        .I1(in_1_IBUF[27]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEACCC0EEEA)) 
    \out[27]_i_3 
       (.I0(\out[27]_i_5_n_0 ),
        .I1(\out[27]_i_6_n_0 ),
        .I2(sra_out0[23]),
        .I3(in_2_IBUF[2]),
        .I4(in_2_IBUF[0]),
        .I5(\out[27]_i_8_n_0 ),
        .O(sr_out[27]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[27]_i_4 
       (.I0(\out_reg[27]_i_9_n_4 ),
        .I1(\out[28]_i_5_n_0 ),
        .I2(\out[27]_i_10_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out[27]_i_5 
       (.I0(in_1_IBUF[29]),
        .I1(in_2_IBUF[1]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[2]),
        .I4(in_1_IBUF[27]),
        .I5(sra_out0[23]),
        .O(\out[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out[27]_i_6 
       (.I0(control_IBUF[3]),
        .I1(in_1_IBUF[31]),
        .O(\out[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \out[27]_i_7 
       (.I0(in_2_IBUF[3]),
        .I1(in_2_IBUF[4]),
        .O(sra_out0[23]));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \out[27]_i_8 
       (.I0(in_1_IBUF[30]),
        .I1(in_1_IBUF[28]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .I5(in_2_IBUF[2]),
        .O(\out[27]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \out[28]_i_1 
       (.I0(\out[28]_i_2_n_0 ),
        .I1(\out[28]_i_3_n_0 ),
        .I2(control_IBUF[1]),
        .I3(control_IBUF[2]),
        .O(out_pre_reg0_in[28]));
  LUT6 #(
    .INIT(64'hEA73734000000000)) 
    \out[28]_i_2 
       (.I0(control_IBUF[1]),
        .I1(control_IBUF[0]),
        .I2(sr_out[28]),
        .I3(in_2_IBUF[28]),
        .I4(in_1_IBUF[28]),
        .I5(control_IBUF[2]),
        .O(\out[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[28]_i_3 
       (.I0(\out_reg[31]_i_6_n_7 ),
        .I1(\out[29]_i_5_n_0 ),
        .I2(\out[28]_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAF0EEF0AAF0)) 
    \out[28]_i_4 
       (.I0(\out[29]_i_6_n_0 ),
        .I1(in_2_IBUF[1]),
        .I2(\out[27]_i_8_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[27]),
        .O(sr_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[28]_i_5 
       (.I0(\out[28]_i_6_n_0 ),
        .I1(\out[31]_i_16_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[30]_i_9_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_15_n_0 ),
        .O(\out[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[28]_i_6 
       (.I0(in_1_IBUF[13]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[5]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[21]),
        .O(\out[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \out[29]_i_1 
       (.I0(\out[29]_i_2_n_0 ),
        .I1(\out[29]_i_3_n_0 ),
        .I2(control_IBUF[1]),
        .I3(control_IBUF[2]),
        .O(out_pre_reg0_in[29]));
  LUT6 #(
    .INIT(64'hEA73734000000000)) 
    \out[29]_i_2 
       (.I0(control_IBUF[1]),
        .I1(control_IBUF[0]),
        .I2(sr_out[29]),
        .I3(in_2_IBUF[29]),
        .I4(in_1_IBUF[29]),
        .I5(control_IBUF[2]),
        .O(\out[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[29]_i_3 
       (.I0(\out_reg[31]_i_6_n_6 ),
        .I1(\out[30]_i_5_n_0 ),
        .I2(\out[29]_i_5_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAC0EAC0EAC0EA)) 
    \out[29]_i_4 
       (.I0(\out[29]_i_6_n_0 ),
        .I1(\out[27]_i_6_n_0 ),
        .I2(sra_out0[29]),
        .I3(in_2_IBUF[0]),
        .I4(\out[2]_i_7_n_0 ),
        .I5(\out[30]_i_8_n_0 ),
        .O(sr_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[29]_i_5 
       (.I0(\out[29]_i_7_n_0 ),
        .I1(\out[31]_i_19_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[31]_i_20_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_21_n_0 ),
        .O(\out[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \out[29]_i_6 
       (.I0(in_1_IBUF[31]),
        .I1(in_1_IBUF[29]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .I5(in_2_IBUF[2]),
        .O(\out[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[29]_i_7 
       (.I0(in_1_IBUF[14]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[6]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[22]),
        .O(\out[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[2]_i_1 
       (.I0(\out[2]_i_2_n_0 ),
        .I1(sr_out[2]),
        .I2(control_IBUF[0]),
        .I3(\out[2]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[2]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[2]_i_2 
       (.I0(in_2_IBUF[2]),
        .I1(in_1_IBUF[2]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFACACACFCACACAC)) 
    \out[2]_i_3 
       (.I0(\out[3]_i_5_n_0 ),
        .I1(\out[2]_i_5_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(\out[27]_i_6_n_0 ),
        .I4(sra_out0[3]),
        .I5(in_2_IBUF[1]),
        .O(sr_out[2]));
  LUT6 #(
    .INIT(64'hC0FFAAAAC000AAAA)) 
    \out[2]_i_4 
       (.I0(\out_reg[3]_i_6_n_5 ),
        .I1(\out[2]_i_6_n_0 ),
        .I2(\out[2]_i_7_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(control_IBUF[0]),
        .I5(\out[3]_i_7_n_0 ),
        .O(\out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[2]_i_5 
       (.I0(\out[8]_i_8_n_0 ),
        .I1(\out[4]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[6]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[2]_i_8_n_0 ),
        .O(\out[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out[2]_i_6 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(\out[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[2]_i_7 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[2]),
        .O(\out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[2]_i_8 
       (.I0(in_1_IBUF[2]),
        .I1(in_1_IBUF[18]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[26]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[10]),
        .O(\out[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \out[30]_i_1 
       (.I0(\out[30]_i_2_n_0 ),
        .I1(\out[30]_i_3_n_0 ),
        .I2(control_IBUF[1]),
        .I3(control_IBUF[2]),
        .O(out_pre_reg0_in[30]));
  LUT6 #(
    .INIT(64'hEA73734000000000)) 
    \out[30]_i_2 
       (.I0(control_IBUF[1]),
        .I1(control_IBUF[0]),
        .I2(sr_out[30]),
        .I3(in_2_IBUF[30]),
        .I4(in_1_IBUF[30]),
        .I5(control_IBUF[2]),
        .O(\out[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCFAAC0AA)) 
    \out[30]_i_3 
       (.I0(\out_reg[31]_i_6_n_5 ),
        .I1(\out[30]_i_5_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(control_IBUF[0]),
        .I4(\out[31]_i_8_n_0 ),
        .O(\out[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCA0F0A0F0A0)) 
    \out[30]_i_4 
       (.I0(sra_out0[29]),
        .I1(\out[30]_i_7_n_0 ),
        .I2(\out[27]_i_6_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[30]_i_8_n_0 ),
        .I5(\out[2]_i_7_n_0 ),
        .O(sr_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[30]_i_5 
       (.I0(\out[30]_i_9_n_0 ),
        .I1(\out[31]_i_15_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[31]_i_16_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_17_n_0 ),
        .O(\out[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[30]_i_6 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[2]),
        .O(sra_out0[29]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out[30]_i_7 
       (.I0(in_1_IBUF[31]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(\out[30]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \out[30]_i_8 
       (.I0(in_1_IBUF[30]),
        .I1(in_2_IBUF[4]),
        .I2(in_2_IBUF[3]),
        .O(\out[30]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[30]_i_9 
       (.I0(in_1_IBUF[15]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[23]),
        .O(\out[30]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[31]_i_1 
       (.I0(control_IBUF[1]),
        .I1(control_IBUF[2]),
        .O(out_pre_reg));
  LUT3 #(
    .INIT(8'h96)) 
    \out[31]_i_10 
       (.I0(in_2_IBUF[31]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[31]),
        .O(\out[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[31]_i_11 
       (.I0(in_2_IBUF[30]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[30]),
        .O(\out[31]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[31]_i_12 
       (.I0(in_2_IBUF[29]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[29]),
        .O(\out[31]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[31]_i_13 
       (.I0(in_2_IBUF[28]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[28]),
        .O(\out[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_14 
       (.I0(in_1_IBUF[31]),
        .I1(in_1_IBUF[15]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[7]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[23]),
        .O(\out[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_15 
       (.I0(in_1_IBUF[27]),
        .I1(in_1_IBUF[11]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[3]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[19]),
        .O(\out[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_16 
       (.I0(in_1_IBUF[25]),
        .I1(in_1_IBUF[9]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[1]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[17]),
        .O(\out[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_17 
       (.I0(in_1_IBUF[29]),
        .I1(in_1_IBUF[13]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[5]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[21]),
        .O(\out[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_18 
       (.I0(in_1_IBUF[30]),
        .I1(in_1_IBUF[14]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[6]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[22]),
        .O(\out[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_19 
       (.I0(in_1_IBUF[26]),
        .I1(in_1_IBUF[10]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[2]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[18]),
        .O(\out[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3210)) 
    \out[31]_i_2 
       (.I0(control_IBUF[2]),
        .I1(control_IBUF[1]),
        .I2(\out[31]_i_3_n_0 ),
        .I3(\out[31]_i_4_n_0 ),
        .I4(\out[31]_i_5_n_0 ),
        .O(out_pre_reg0_in[31]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_20 
       (.I0(in_1_IBUF[24]),
        .I1(in_1_IBUF[8]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[0]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[16]),
        .O(\out[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_21 
       (.I0(in_1_IBUF[28]),
        .I1(in_1_IBUF[12]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[4]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[20]),
        .O(\out[31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[31]_i_3 
       (.I0(\out_reg[31]_i_6_n_4 ),
        .I1(\out[31]_i_7_n_0 ),
        .I2(\out[31]_i_8_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF6666C0C06666)) 
    \out[31]_i_4 
       (.I0(in_2_IBUF[31]),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(in_2_IBUF[0]),
        .I4(control_IBUF[0]),
        .I5(\out[31]_i_9_n_0 ),
        .O(\out[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80008880)) 
    \out[31]_i_5 
       (.I0(control_IBUF[2]),
        .I1(control_IBUF[1]),
        .I2(in_1_IBUF[31]),
        .I3(in_2_IBUF[31]),
        .I4(control_IBUF[0]),
        .O(\out[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_7 
       (.I0(\out[31]_i_14_n_0 ),
        .I1(\out[31]_i_15_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[31]_i_16_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_17_n_0 ),
        .O(\out[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[31]_i_8 
       (.I0(\out[31]_i_18_n_0 ),
        .I1(\out[31]_i_19_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[31]_i_20_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[31]_i_21_n_0 ),
        .O(\out[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \out[31]_i_9 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[1]),
        .I2(in_2_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[31]),
        .O(\out[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[3]_i_1 
       (.I0(\out[3]_i_2_n_0 ),
        .I1(sr_out[3]),
        .I2(control_IBUF[0]),
        .I3(\out[3]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_10 
       (.I0(in_2_IBUF[2]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[2]),
        .O(\out[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_11 
       (.I0(in_2_IBUF[1]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[1]),
        .O(\out[3]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \out[3]_i_12 
       (.I0(in_2_IBUF[0]),
        .O(\out[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[3]_i_2 
       (.I0(in_2_IBUF[3]),
        .I1(in_1_IBUF[3]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[3]_i_3 
       (.I0(\out[3]_i_5_n_0 ),
        .I1(\out[27]_i_6_n_0 ),
        .I2(sra_out0[7]),
        .I3(in_2_IBUF[2]),
        .I4(in_2_IBUF[0]),
        .I5(\out[4]_i_5_n_0 ),
        .O(sr_out[3]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[3]_i_4 
       (.I0(\out_reg[3]_i_6_n_4 ),
        .I1(\out[4]_i_7_n_0 ),
        .I2(\out[3]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[3]_i_5 
       (.I0(\out[9]_i_7_n_0 ),
        .I1(\out[5]_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[7]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[3]_i_8_n_0 ),
        .O(\out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \out[3]_i_7 
       (.I0(in_1_IBUF[0]),
        .I1(in_1_IBUF[2]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .I5(in_2_IBUF[2]),
        .O(\out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[3]_i_8 
       (.I0(in_1_IBUF[3]),
        .I1(in_1_IBUF[19]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[27]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[11]),
        .O(\out[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[3]_i_9 
       (.I0(in_2_IBUF[3]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[3]),
        .O(\out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[4]_i_1 
       (.I0(\out[4]_i_2_n_0 ),
        .I1(sr_out[4]),
        .I2(control_IBUF[0]),
        .I3(\out[4]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[4]_i_2 
       (.I0(in_2_IBUF[4]),
        .I1(in_1_IBUF[4]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[4]_i_3 
       (.I0(\out[5]_i_5_n_0 ),
        .I1(sra_out0[5]),
        .I2(\out[4]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[3]),
        .O(sr_out[4]));
  LUT5 #(
    .INIT(32'hCFAAC0AA)) 
    \out[4]_i_4 
       (.I0(\out_reg[7]_i_6_n_7 ),
        .I1(\out[4]_i_7_n_0 ),
        .I2(in_2_IBUF[0]),
        .I3(control_IBUF[0]),
        .I4(\out[5]_i_6_n_0 ),
        .O(\out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[4]_i_5 
       (.I0(\out[10]_i_8_n_0 ),
        .I1(\out[6]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[8]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[4]_i_8_n_0 ),
        .O(\out[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \out[4]_i_6 
       (.I0(in_2_IBUF[2]),
        .I1(in_2_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .O(sra_out0[3]));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \out[4]_i_7 
       (.I0(in_1_IBUF[1]),
        .I1(in_1_IBUF[3]),
        .I2(in_2_IBUF[4]),
        .I3(in_2_IBUF[3]),
        .I4(in_2_IBUF[1]),
        .I5(in_2_IBUF[2]),
        .O(\out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[4]_i_8 
       (.I0(in_1_IBUF[4]),
        .I1(in_1_IBUF[20]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[28]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[12]),
        .O(\out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[5]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(sr_out[5]),
        .I2(control_IBUF[0]),
        .I3(\out[5]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[5]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[5]_i_2 
       (.I0(in_2_IBUF[5]),
        .I1(in_1_IBUF[5]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[5]_i_3 
       (.I0(\out[5]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[5]),
        .I4(in_2_IBUF[0]),
        .I5(\out[6]_i_5_n_0 ),
        .O(sr_out[5]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[5]_i_4 
       (.I0(\out_reg[7]_i_6_n_6 ),
        .I1(\out[6]_i_7_n_0 ),
        .I2(\out[5]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[5]_i_5 
       (.I0(\out[11]_i_8_n_0 ),
        .I1(\out[7]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[9]_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[5]_i_7_n_0 ),
        .O(\out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out[5]_i_6 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[1]),
        .I2(in_1_IBUF[0]),
        .I3(in_2_IBUF[2]),
        .I4(in_1_IBUF[4]),
        .I5(sra_out0[23]),
        .O(\out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[5]_i_7 
       (.I0(in_1_IBUF[5]),
        .I1(in_1_IBUF[21]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[29]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[13]),
        .O(\out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[6]_i_1 
       (.I0(\out[6]_i_2_n_0 ),
        .I1(sr_out[6]),
        .I2(control_IBUF[0]),
        .I3(\out[6]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[6]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[6]_i_2 
       (.I0(in_2_IBUF[6]),
        .I1(in_1_IBUF[6]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[6]_i_3 
       (.I0(\out[7]_i_5_n_0 ),
        .I1(sra_out0[7]),
        .I2(\out[6]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[5]),
        .O(sr_out[6]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[6]_i_4 
       (.I0(\out_reg[7]_i_6_n_5 ),
        .I1(\out[7]_i_7_n_0 ),
        .I2(\out[6]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[6]_i_5 
       (.I0(\out[12]_i_8_n_0 ),
        .I1(\out[8]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[10]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[6]_i_8_n_0 ),
        .O(\out[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \out[6]_i_6 
       (.I0(in_2_IBUF[1]),
        .I1(in_2_IBUF[2]),
        .I2(in_2_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .O(sra_out0[5]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \out[6]_i_7 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[1]),
        .I2(in_1_IBUF[1]),
        .I3(in_2_IBUF[2]),
        .I4(in_1_IBUF[5]),
        .I5(sra_out0[23]),
        .O(\out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[6]_i_8 
       (.I0(in_1_IBUF[6]),
        .I1(in_1_IBUF[22]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[30]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[14]),
        .O(\out[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(sr_out[7]),
        .I2(control_IBUF[0]),
        .I3(\out[7]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_10 
       (.I0(in_2_IBUF[6]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[6]),
        .O(\out[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_11 
       (.I0(in_2_IBUF[5]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[5]),
        .O(\out[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_12 
       (.I0(in_2_IBUF[4]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[4]),
        .O(\out[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \out[7]_i_13 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[6]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[3]),
        .O(\out[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[7]_i_2 
       (.I0(in_2_IBUF[7]),
        .I1(in_1_IBUF[7]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[7]_i_3 
       (.I0(\out[7]_i_5_n_0 ),
        .I1(\out[27]_i_6_n_0 ),
        .I2(in_2_IBUF[3]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[0]),
        .I5(\out[8]_i_5_n_0 ),
        .O(sr_out[7]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[7]_i_4 
       (.I0(\out_reg[7]_i_6_n_4 ),
        .I1(\out[8]_i_7_n_0 ),
        .I2(\out[7]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[7]_i_5 
       (.I0(\out[13]_i_7_n_0 ),
        .I1(\out[9]_i_7_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[11]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[7]_i_8_n_0 ),
        .O(\out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[7]_i_7 
       (.I0(in_1_IBUF[0]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[4]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[7]_i_13_n_0 ),
        .O(\out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \out[7]_i_8 
       (.I0(in_1_IBUF[7]),
        .I1(in_1_IBUF[23]),
        .I2(in_2_IBUF[3]),
        .I3(in_1_IBUF[31]),
        .I4(in_2_IBUF[4]),
        .I5(in_1_IBUF[15]),
        .O(\out[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \out[7]_i_9 
       (.I0(in_2_IBUF[7]),
        .I1(control_IBUF[3]),
        .I2(in_1_IBUF[7]),
        .O(\out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[8]_i_1 
       (.I0(\out[8]_i_2_n_0 ),
        .I1(sr_out[8]),
        .I2(control_IBUF[0]),
        .I3(\out[8]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[8]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[8]_i_2 
       (.I0(in_2_IBUF[8]),
        .I1(in_1_IBUF[8]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFAAF0EEF0AAF0)) 
    \out[8]_i_3 
       (.I0(\out[9]_i_5_n_0 ),
        .I1(sra_out0[9]),
        .I2(\out[8]_i_5_n_0 ),
        .I3(in_2_IBUF[0]),
        .I4(\out[27]_i_6_n_0 ),
        .I5(sra_out0[7]),
        .O(sr_out[8]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[8]_i_4 
       (.I0(\out_reg[11]_i_6_n_7 ),
        .I1(\out[9]_i_6_n_0 ),
        .I2(\out[8]_i_7_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[8]_i_5 
       (.I0(\out[14]_i_8_n_0 ),
        .I1(\out[10]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[12]_i_8_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[8]_i_8_n_0 ),
        .O(\out[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[8]_i_6 
       (.I0(in_2_IBUF[4]),
        .I1(in_2_IBUF[3]),
        .O(sra_out0[7]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[8]_i_7 
       (.I0(in_1_IBUF[1]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[5]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[8]_i_9_n_0 ),
        .O(\out[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[8]_i_8 
       (.I0(in_1_IBUF[16]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[24]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[8]),
        .O(\out[8]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \out[8]_i_9 
       (.I0(in_1_IBUF[3]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[7]),
        .I3(in_2_IBUF[4]),
        .I4(in_2_IBUF[3]),
        .O(\out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAEA0000FF00)) 
    \out[9]_i_1 
       (.I0(\out[9]_i_2_n_0 ),
        .I1(sr_out[9]),
        .I2(control_IBUF[0]),
        .I3(\out[9]_i_4_n_0 ),
        .I4(control_IBUF[1]),
        .I5(control_IBUF[2]),
        .O(out_pre_reg0_in[9]));
  LUT4 #(
    .INIT(16'h8E06)) 
    \out[9]_i_2 
       (.I0(in_2_IBUF[9]),
        .I1(in_1_IBUF[9]),
        .I2(control_IBUF[0]),
        .I3(control_IBUF[1]),
        .O(\out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAAC000EAAA)) 
    \out[9]_i_3 
       (.I0(\out[9]_i_5_n_0 ),
        .I1(in_1_IBUF[31]),
        .I2(control_IBUF[3]),
        .I3(sra_out0[9]),
        .I4(in_2_IBUF[0]),
        .I5(\out[10]_i_5_n_0 ),
        .O(sr_out[9]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \out[9]_i_4 
       (.I0(\out_reg[11]_i_6_n_6 ),
        .I1(\out[10]_i_7_n_0 ),
        .I2(\out[9]_i_6_n_0 ),
        .I3(control_IBUF[0]),
        .I4(in_2_IBUF[0]),
        .O(\out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[9]_i_5 
       (.I0(\out[15]_i_8_n_0 ),
        .I1(\out[11]_i_8_n_0 ),
        .I2(in_2_IBUF[1]),
        .I3(\out[13]_i_7_n_0 ),
        .I4(in_2_IBUF[2]),
        .I5(\out[9]_i_7_n_0 ),
        .O(\out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \out[9]_i_6 
       (.I0(in_1_IBUF[2]),
        .I1(in_2_IBUF[2]),
        .I2(in_1_IBUF[6]),
        .I3(sra_out0[23]),
        .I4(in_2_IBUF[1]),
        .I5(\out[11]_i_13_n_0 ),
        .O(\out[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \out[9]_i_7 
       (.I0(in_1_IBUF[17]),
        .I1(in_2_IBUF[3]),
        .I2(in_1_IBUF[25]),
        .I3(in_2_IBUF[4]),
        .I4(in_1_IBUF[9]),
        .O(\out[9]_i_7_n_0 ));
  OBUF \out_OBUF[0]_inst 
       (.I(out_OBUF[0]),
        .O(out[0]));
  OBUF \out_OBUF[10]_inst 
       (.I(out_OBUF[10]),
        .O(out[10]));
  OBUF \out_OBUF[11]_inst 
       (.I(out_OBUF[11]),
        .O(out[11]));
  OBUF \out_OBUF[12]_inst 
       (.I(out_OBUF[12]),
        .O(out[12]));
  OBUF \out_OBUF[13]_inst 
       (.I(out_OBUF[13]),
        .O(out[13]));
  OBUF \out_OBUF[14]_inst 
       (.I(out_OBUF[14]),
        .O(out[14]));
  OBUF \out_OBUF[15]_inst 
       (.I(out_OBUF[15]),
        .O(out[15]));
  OBUF \out_OBUF[16]_inst 
       (.I(out_OBUF[16]),
        .O(out[16]));
  OBUF \out_OBUF[17]_inst 
       (.I(out_OBUF[17]),
        .O(out[17]));
  OBUF \out_OBUF[18]_inst 
       (.I(out_OBUF[18]),
        .O(out[18]));
  OBUF \out_OBUF[19]_inst 
       (.I(out_OBUF[19]),
        .O(out[19]));
  OBUF \out_OBUF[1]_inst 
       (.I(out_OBUF[1]),
        .O(out[1]));
  OBUF \out_OBUF[20]_inst 
       (.I(out_OBUF[20]),
        .O(out[20]));
  OBUF \out_OBUF[21]_inst 
       (.I(out_OBUF[21]),
        .O(out[21]));
  OBUF \out_OBUF[22]_inst 
       (.I(out_OBUF[22]),
        .O(out[22]));
  OBUF \out_OBUF[23]_inst 
       (.I(out_OBUF[23]),
        .O(out[23]));
  OBUF \out_OBUF[24]_inst 
       (.I(out_OBUF[24]),
        .O(out[24]));
  OBUF \out_OBUF[25]_inst 
       (.I(out_OBUF[25]),
        .O(out[25]));
  OBUF \out_OBUF[26]_inst 
       (.I(out_OBUF[26]),
        .O(out[26]));
  OBUF \out_OBUF[27]_inst 
       (.I(out_OBUF[27]),
        .O(out[27]));
  OBUF \out_OBUF[28]_inst 
       (.I(out_OBUF[28]),
        .O(out[28]));
  OBUF \out_OBUF[29]_inst 
       (.I(out_OBUF[29]),
        .O(out[29]));
  OBUF \out_OBUF[2]_inst 
       (.I(out_OBUF[2]),
        .O(out[2]));
  OBUF \out_OBUF[30]_inst 
       (.I(out_OBUF[30]),
        .O(out[30]));
  OBUF \out_OBUF[31]_inst 
       (.I(out_OBUF[31]),
        .O(out[31]));
  OBUF \out_OBUF[3]_inst 
       (.I(out_OBUF[3]),
        .O(out[3]));
  OBUF \out_OBUF[4]_inst 
       (.I(out_OBUF[4]),
        .O(out[4]));
  OBUF \out_OBUF[5]_inst 
       (.I(out_OBUF[5]),
        .O(out[5]));
  OBUF \out_OBUF[6]_inst 
       (.I(out_OBUF[6]),
        .O(out[6]));
  OBUF \out_OBUF[7]_inst 
       (.I(out_OBUF[7]),
        .O(out[7]));
  OBUF \out_OBUF[8]_inst 
       (.I(out_OBUF[8]),
        .O(out[8]));
  OBUF \out_OBUF[9]_inst 
       (.I(out_OBUF[9]),
        .O(out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[0]),
        .Q(out_OBUF[0]),
        .R(1'b0));
  MUXF7 \out_reg[0]_i_1 
       (.I0(\out[0]_i_2_n_0 ),
        .I1(\out[0]_i_3_n_0 ),
        .O(out_pre_reg0_in[0]),
        .S(control_IBUF[2]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_12 
       (.CI(\out_reg[0]_i_31_n_0 ),
        .CO({\out_reg[0]_i_12_n_0 ,\out_reg[0]_i_12_n_1 ,\out_reg[0]_i_12_n_2 ,\out_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_32_n_0 ,\out[0]_i_33_n_0 ,\out[0]_i_34_n_0 ,\out[0]_i_35_n_0 }),
        .O(\NLW_out_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_36_n_0 ,\out[0]_i_37_n_0 ,\out[0]_i_38_n_0 ,\out[0]_i_39_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_21 
       (.CI(\out_reg[0]_i_40_n_0 ),
        .CO({\out_reg[0]_i_21_n_0 ,\out_reg[0]_i_21_n_1 ,\out_reg[0]_i_21_n_2 ,\out_reg[0]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_41_n_0 ,\out[0]_i_42_n_0 ,\out[0]_i_43_n_0 ,\out[0]_i_44_n_0 }),
        .O(\NLW_out_reg[0]_i_21_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_45_n_0 ,\out[0]_i_46_n_0 ,\out[0]_i_47_n_0 ,\out[0]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_31 
       (.CI(\out_reg[0]_i_49_n_0 ),
        .CO({\out_reg[0]_i_31_n_0 ,\out_reg[0]_i_31_n_1 ,\out_reg[0]_i_31_n_2 ,\out_reg[0]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_50_n_0 ,\out[0]_i_51_n_0 ,\out[0]_i_52_n_0 ,\out[0]_i_53_n_0 }),
        .O(\NLW_out_reg[0]_i_31_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_54_n_0 ,\out[0]_i_55_n_0 ,\out[0]_i_56_n_0 ,\out[0]_i_57_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_40 
       (.CI(\out_reg[0]_i_58_n_0 ),
        .CO({\out_reg[0]_i_40_n_0 ,\out_reg[0]_i_40_n_1 ,\out_reg[0]_i_40_n_2 ,\out_reg[0]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_59_n_0 ,\out[0]_i_60_n_0 ,\out[0]_i_61_n_0 ,\out[0]_i_62_n_0 }),
        .O(\NLW_out_reg[0]_i_40_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_63_n_0 ,\out[0]_i_64_n_0 ,\out[0]_i_65_n_0 ,\out[0]_i_66_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_49 
       (.CI(1'b0),
        .CO({\out_reg[0]_i_49_n_0 ,\out_reg[0]_i_49_n_1 ,\out_reg[0]_i_49_n_2 ,\out_reg[0]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_67_n_0 ,\out[0]_i_68_n_0 ,\out[0]_i_69_n_0 ,\out[0]_i_70_n_0 }),
        .O(\NLW_out_reg[0]_i_49_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_71_n_0 ,\out[0]_i_72_n_0 ,\out[0]_i_73_n_0 ,\out[0]_i_74_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_5 
       (.CI(\out_reg[0]_i_12_n_0 ),
        .CO({slt_out01_in,\out_reg[0]_i_5_n_1 ,\out_reg[0]_i_5_n_2 ,\out_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_13_n_0 ,\out[0]_i_14_n_0 ,\out[0]_i_15_n_0 ,\out[0]_i_16_n_0 }),
        .O(\NLW_out_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_17_n_0 ,\out[0]_i_18_n_0 ,\out[0]_i_19_n_0 ,\out[0]_i_20_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_58 
       (.CI(1'b0),
        .CO({\out_reg[0]_i_58_n_0 ,\out_reg[0]_i_58_n_1 ,\out_reg[0]_i_58_n_2 ,\out_reg[0]_i_58_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_75_n_0 ,\out[0]_i_76_n_0 ,\out[0]_i_77_n_0 ,\out[0]_i_78_n_0 }),
        .O(\NLW_out_reg[0]_i_58_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_79_n_0 ,\out[0]_i_80_n_0 ,\out[0]_i_81_n_0 ,\out[0]_i_82_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[0]_i_6 
       (.CI(\out_reg[0]_i_21_n_0 ),
        .CO({slt_out0,\out_reg[0]_i_6_n_1 ,\out_reg[0]_i_6_n_2 ,\out_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\out[0]_i_22_n_0 ,\out[0]_i_23_n_0 ,\out[0]_i_24_n_0 ,\out[0]_i_25_n_0 }),
        .O(\NLW_out_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({\out[0]_i_26_n_0 ,\out[0]_i_27_n_0 ,\out[0]_i_28_n_0 ,\out[0]_i_29_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[10]),
        .Q(out_OBUF[10]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[11]),
        .Q(out_OBUF[11]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[11]_i_6 
       (.CI(\out_reg[7]_i_6_n_0 ),
        .CO({\out_reg[11]_i_6_n_0 ,\out_reg[11]_i_6_n_1 ,\out_reg[11]_i_6_n_2 ,\out_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[11:8]),
        .O({\out_reg[11]_i_6_n_4 ,\out_reg[11]_i_6_n_5 ,\out_reg[11]_i_6_n_6 ,\out_reg[11]_i_6_n_7 }),
        .S({\out[11]_i_9_n_0 ,\out[11]_i_10_n_0 ,\out[11]_i_11_n_0 ,\out[11]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[12]),
        .Q(out_OBUF[12]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[13]),
        .Q(out_OBUF[13]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[14]),
        .Q(out_OBUF[14]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[15]),
        .Q(out_OBUF[15]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[15]_i_6 
       (.CI(\out_reg[11]_i_6_n_0 ),
        .CO({\out_reg[15]_i_6_n_0 ,\out_reg[15]_i_6_n_1 ,\out_reg[15]_i_6_n_2 ,\out_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[15:12]),
        .O({\out_reg[15]_i_6_n_4 ,\out_reg[15]_i_6_n_5 ,\out_reg[15]_i_6_n_6 ,\out_reg[15]_i_6_n_7 }),
        .S({\out[15]_i_9_n_0 ,\out[15]_i_10_n_0 ,\out[15]_i_11_n_0 ,\out[15]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[16]),
        .Q(out_OBUF[16]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[17]),
        .Q(out_OBUF[17]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[18]),
        .Q(out_OBUF[18]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[19]),
        .Q(out_OBUF[19]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[19]_i_6 
       (.CI(\out_reg[15]_i_6_n_0 ),
        .CO({\out_reg[19]_i_6_n_0 ,\out_reg[19]_i_6_n_1 ,\out_reg[19]_i_6_n_2 ,\out_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[19:16]),
        .O({\out_reg[19]_i_6_n_4 ,\out_reg[19]_i_6_n_5 ,\out_reg[19]_i_6_n_6 ,\out_reg[19]_i_6_n_7 }),
        .S({\out[19]_i_10_n_0 ,\out[19]_i_11_n_0 ,\out[19]_i_12_n_0 ,\out[19]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[1]),
        .Q(out_OBUF[1]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[20]),
        .Q(out_OBUF[20]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[21]),
        .Q(out_OBUF[21]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[22]),
        .Q(out_OBUF[22]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[23]),
        .Q(out_OBUF[23]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[23]_i_6 
       (.CI(\out_reg[19]_i_6_n_0 ),
        .CO({\out_reg[23]_i_6_n_0 ,\out_reg[23]_i_6_n_1 ,\out_reg[23]_i_6_n_2 ,\out_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[23:20]),
        .O({\out_reg[23]_i_6_n_4 ,\out_reg[23]_i_6_n_5 ,\out_reg[23]_i_6_n_6 ,\out_reg[23]_i_6_n_7 }),
        .S({\out[23]_i_9_n_0 ,\out[23]_i_10_n_0 ,\out[23]_i_11_n_0 ,\out[23]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[24]),
        .Q(out_OBUF[24]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[25]),
        .Q(out_OBUF[25]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[26]),
        .Q(out_OBUF[26]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[27]),
        .Q(out_OBUF[27]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[27]_i_9 
       (.CI(\out_reg[23]_i_6_n_0 ),
        .CO({\out_reg[27]_i_9_n_0 ,\out_reg[27]_i_9_n_1 ,\out_reg[27]_i_9_n_2 ,\out_reg[27]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[27:24]),
        .O({\out_reg[27]_i_9_n_4 ,\out_reg[27]_i_9_n_5 ,\out_reg[27]_i_9_n_6 ,\out_reg[27]_i_9_n_7 }),
        .S({\out[27]_i_11_n_0 ,\out[27]_i_12_n_0 ,\out[27]_i_13_n_0 ,\out[27]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[28]),
        .Q(out_OBUF[28]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[29]),
        .Q(out_OBUF[29]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[2]),
        .Q(out_OBUF[2]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[30]),
        .Q(out_OBUF[30]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[31]),
        .Q(out_OBUF[31]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[31]_i_6 
       (.CI(\out_reg[27]_i_9_n_0 ),
        .CO({\NLW_out_reg[31]_i_6_CO_UNCONNECTED [3],\out_reg[31]_i_6_n_1 ,\out_reg[31]_i_6_n_2 ,\out_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in_1_IBUF[30:28]}),
        .O({\out_reg[31]_i_6_n_4 ,\out_reg[31]_i_6_n_5 ,\out_reg[31]_i_6_n_6 ,\out_reg[31]_i_6_n_7 }),
        .S({\out[31]_i_10_n_0 ,\out[31]_i_11_n_0 ,\out[31]_i_12_n_0 ,\out[31]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[3]),
        .Q(out_OBUF[3]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[3]_i_6 
       (.CI(1'b0),
        .CO({\out_reg[3]_i_6_n_0 ,\out_reg[3]_i_6_n_1 ,\out_reg[3]_i_6_n_2 ,\out_reg[3]_i_6_n_3 }),
        .CYINIT(in_1_IBUF[0]),
        .DI({in_1_IBUF[3:1],control_IBUF[3]}),
        .O({\out_reg[3]_i_6_n_4 ,\out_reg[3]_i_6_n_5 ,\out_reg[3]_i_6_n_6 ,\out_reg[3]_i_6_n_7 }),
        .S({\out[3]_i_9_n_0 ,\out[3]_i_10_n_0 ,\out[3]_i_11_n_0 ,\out[3]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[4]),
        .Q(out_OBUF[4]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[5]),
        .Q(out_OBUF[5]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[6]),
        .Q(out_OBUF[6]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[7]),
        .Q(out_OBUF[7]),
        .R(out_pre_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_6 
       (.CI(\out_reg[3]_i_6_n_0 ),
        .CO({\out_reg[7]_i_6_n_0 ,\out_reg[7]_i_6_n_1 ,\out_reg[7]_i_6_n_2 ,\out_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(in_1_IBUF[7:4]),
        .O({\out_reg[7]_i_6_n_4 ,\out_reg[7]_i_6_n_5 ,\out_reg[7]_i_6_n_6 ,\out_reg[7]_i_6_n_7 }),
        .S({\out[7]_i_9_n_0 ,\out[7]_i_10_n_0 ,\out[7]_i_11_n_0 ,\out[7]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[8]),
        .Q(out_OBUF[8]),
        .R(out_pre_reg));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_pre_reg0_in[9]),
        .Q(out_OBUF[9]),
        .R(out_pre_reg));
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
