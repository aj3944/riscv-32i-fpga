// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Dec  4 00:25:10 2023
// Host        : DESKTOP-P0GG95G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/User/RISC-V_Local/RISC-V_Local.sim/sim_1/synth/func/xsim/tb_control_unit_func_synth.v
// Design      : control_unit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STATE_EX_ADD = "5'b00111" *) (* STATE_EX_AND = "5'b10000" *) (* STATE_EX_OR = "5'b01111" *) 
(* STATE_EX_SLL = "5'b01001" *) (* STATE_EX_SLT = "5'b01010" *) (* STATE_EX_SLTU = "5'b01011" *) 
(* STATE_EX_SRA = "5'b01110" *) (* STATE_EX_SRL = "5'b01101" *) (* STATE_EX_SUB = "5'b01000" *) 
(* STATE_EX_XOR = "5'b01100" *) (* STATE_ID_AUIPC = "5'b11110" *) (* STATE_ID_BTYPE = "5'b00011" *) 
(* STATE_ID_ITYPE = "5'b00010" *) (* STATE_ID_JTYPE = "5'b00101" *) (* STATE_ID_LUI = "5'b00110" *) 
(* STATE_ID_RTYPE = "5'b00001" *) (* STATE_ID_STYPE = "5'b00100" *) (* STATE_IF_INIT = "5'b00000" *) 
(* STATE_MEM_LB = "5'b10001" *) (* STATE_MEM_LBU = "5'b10100" *) (* STATE_MEM_LH = "5'b10010" *) 
(* STATE_MEM_LHU = "5'b10101" *) (* STATE_MEM_LW = "5'b10011" *) (* STATE_MEM_SB = "5'b10110" *) 
(* STATE_MEM_SH = "5'b10111" *) (* STATE_MEM_SW = "5'b11000" *) (* STATE_UNUSED_1 = "5'b11111" *) 
(* STATE_WB_BNT = "5'b11100" *) (* STATE_WB_BT = "5'b11101" *) (* STATE_WB_GEN = "5'b11001" *) 
(* STATE_WB_JALR = "5'b11011" *) (* STATE_WB_LOAD = "5'b11010" *) 
(* NotValidForBitStream *)
module control_unit
   (clk,
    rst,
    opcode,
    funct3,
    funct7,
    alu_result,
    mux_se,
    mux_alu,
    we_alu,
    aluop,
    we_result,
    we_dmem,
    we_pc,
    we_store,
    mux_store,
    mux_load,
    mux_wb,
    we_rf,
    mux_pc,
    mux_jalr,
    state_reg_test);
  input clk;
  input rst;
  input [6:0]opcode;
  input [2:0]funct3;
  input funct7;
  input [31:0]alu_result;
  output [2:0]mux_se;
  output mux_alu;
  output we_alu;
  output [3:0]aluop;
  output we_result;
  output we_dmem;
  output we_pc;
  output we_store;
  output [1:0]mux_store;
  output [2:0]mux_load;
  output [2:0]mux_wb;
  output we_rf;
  output mux_pc;
  output mux_jalr;
  output [31:0]state_reg_test;

  wire \FSM_onehot_state_curr[0]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[0]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[0]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[10]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[11]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[12]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[13]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[14]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[14]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[15]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[15]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[16]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[17]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[18]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[18]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[19]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[19]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[1]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[1]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[20]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[21]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[21]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[22]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[22]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[22]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[23]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_10_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_11_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_12_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_13_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_4_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_5_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_6_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_7_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_8_n_0 ;
  wire \FSM_onehot_state_curr[24]_i_9_n_0 ;
  wire \FSM_onehot_state_curr[25]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[26]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[27]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[28]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[29]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[29]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[2]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[30]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[30]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[30]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[3]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[4]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[5]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[5]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[5]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[6]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[7]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[7]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[8]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[8]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[9]_i_1_n_0 ;
  wire \FSM_onehot_state_curr[9]_i_2_n_0 ;
  wire \FSM_onehot_state_curr[9]_i_3_n_0 ;
  wire \FSM_onehot_state_curr[9]_i_4_n_0 ;
  wire \FSM_onehot_state_curr_reg_n_0_[0] ;
  wire \FSM_onehot_state_curr_reg_n_0_[10] ;
  wire \FSM_onehot_state_curr_reg_n_0_[11] ;
  wire \FSM_onehot_state_curr_reg_n_0_[12] ;
  wire \FSM_onehot_state_curr_reg_n_0_[13] ;
  wire \FSM_onehot_state_curr_reg_n_0_[15] ;
  wire \FSM_onehot_state_curr_reg_n_0_[18] ;
  wire \FSM_onehot_state_curr_reg_n_0_[1] ;
  wire \FSM_onehot_state_curr_reg_n_0_[20] ;
  wire \FSM_onehot_state_curr_reg_n_0_[21] ;
  wire \FSM_onehot_state_curr_reg_n_0_[22] ;
  wire \FSM_onehot_state_curr_reg_n_0_[23] ;
  wire \FSM_onehot_state_curr_reg_n_0_[24] ;
  wire \FSM_onehot_state_curr_reg_n_0_[25] ;
  wire \FSM_onehot_state_curr_reg_n_0_[26] ;
  wire \FSM_onehot_state_curr_reg_n_0_[27] ;
  wire \FSM_onehot_state_curr_reg_n_0_[28] ;
  wire \FSM_onehot_state_curr_reg_n_0_[29] ;
  wire \FSM_onehot_state_curr_reg_n_0_[30] ;
  wire \FSM_onehot_state_curr_reg_n_0_[3] ;
  wire \FSM_onehot_state_curr_reg_n_0_[5] ;
  wire \FSM_onehot_state_curr_reg_n_0_[6] ;
  wire \FSM_onehot_state_curr_reg_n_0_[8] ;
  wire \FSM_onehot_state_curr_reg_n_0_[9] ;
  wire [31:0]alu_result;
  wire [31:0]alu_result_IBUF;
  wire [3:0]aluop;
  wire [3:0]aluop_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]funct3;
  wire [2:0]funct3_IBUF;
  wire funct7;
  wire funct7_IBUF;
  wire mux_alu;
  wire mux_alu_OBUF;
  wire mux_jalr;
  wire mux_jalr_OBUF;
  wire [2:0]mux_load;
  wire [2:0]mux_load_OBUF;
  wire \mux_load_OBUF[1]_inst_i_2_n_0 ;
  wire \mux_load_OBUF[1]_inst_i_3_n_0 ;
  wire mux_pc;
  wire mux_pc_OBUF;
  wire [2:0]mux_se;
  wire [1:0]mux_se_OBUF;
  wire [1:0]mux_store;
  wire [1:0]mux_store_OBUF;
  wire [2:0]mux_wb;
  wire [2:0]mux_wb_OBUF;
  wire [6:0]opcode;
  wire [6:0]opcode_IBUF;
  wire rst;
  wire rst_IBUF;
  wire \state_curr[0]_i_10_n_0 ;
  wire \state_curr[0]_i_11_n_0 ;
  wire \state_curr[0]_i_12_n_0 ;
  wire \state_curr[0]_i_13_n_0 ;
  wire \state_curr[0]_i_14_n_0 ;
  wire \state_curr[0]_i_15_n_0 ;
  wire \state_curr[0]_i_16_n_0 ;
  wire \state_curr[0]_i_17_n_0 ;
  wire \state_curr[0]_i_18_n_0 ;
  wire \state_curr[0]_i_19_n_0 ;
  wire \state_curr[0]_i_1_n_0 ;
  wire \state_curr[0]_i_20_n_0 ;
  wire \state_curr[0]_i_2_n_0 ;
  wire \state_curr[0]_i_3_n_0 ;
  wire \state_curr[0]_i_4_n_0 ;
  wire \state_curr[0]_i_5_n_0 ;
  wire \state_curr[0]_i_6_n_0 ;
  wire \state_curr[0]_i_7_n_0 ;
  wire \state_curr[0]_i_8_n_0 ;
  wire \state_curr[0]_i_9_n_0 ;
  wire \state_curr[1]_i_10_n_0 ;
  wire \state_curr[1]_i_11_n_0 ;
  wire \state_curr[1]_i_1_n_0 ;
  wire \state_curr[1]_i_2_n_0 ;
  wire \state_curr[1]_i_3_n_0 ;
  wire \state_curr[1]_i_4_n_0 ;
  wire \state_curr[1]_i_5_n_0 ;
  wire \state_curr[1]_i_6_n_0 ;
  wire \state_curr[1]_i_7_n_0 ;
  wire \state_curr[1]_i_8_n_0 ;
  wire \state_curr[1]_i_9_n_0 ;
  wire \state_curr[2]_i_10_n_0 ;
  wire \state_curr[2]_i_11_n_0 ;
  wire \state_curr[2]_i_12_n_0 ;
  wire \state_curr[2]_i_1_n_0 ;
  wire \state_curr[2]_i_2_n_0 ;
  wire \state_curr[2]_i_3_n_0 ;
  wire \state_curr[2]_i_4_n_0 ;
  wire \state_curr[2]_i_5_n_0 ;
  wire \state_curr[2]_i_6_n_0 ;
  wire \state_curr[2]_i_7_n_0 ;
  wire \state_curr[2]_i_8_n_0 ;
  wire \state_curr[2]_i_9_n_0 ;
  wire \state_curr[3]_i_1_n_0 ;
  wire \state_curr[3]_i_2_n_0 ;
  wire \state_curr[3]_i_3_n_0 ;
  wire \state_curr[3]_i_4_n_0 ;
  wire \state_curr[3]_i_5_n_0 ;
  wire \state_curr[4]_i_1_n_0 ;
  wire \state_curr[4]_i_2_n_0 ;
  wire \state_curr[4]_i_3_n_0 ;
  wire \state_curr[4]_i_4_n_0 ;
  wire \state_curr[4]_i_5_n_0 ;
  wire \state_curr[4]_i_6_n_0 ;
  wire \state_curr[4]_i_7_n_0 ;
  wire \state_curr[4]_i_8_n_0 ;
  wire [31:0]state_reg_test;
  wire [4:0]state_reg_test_OBUF;
  wire we_alu;
  wire we_alu_OBUF;
  wire we_alu_OBUF_inst_i_2_n_0;
  wire we_dmem;
  wire we_pc;
  wire we_pc_OBUF;
  wire we_result;
  wire we_result_OBUF;
  wire we_rf;
  wire we_rf_OBUF;
  wire we_store;
  wire we_store_OBUF;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \FSM_onehot_state_curr[0]_i_1 
       (.I0(\FSM_onehot_state_curr[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_curr[0]_i_3_n_0 ),
        .I2(mux_se_OBUF[1]),
        .I3(\FSM_onehot_state_curr[9]_i_4_n_0 ),
        .I4(mux_se_OBUF[0]),
        .I5(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .O(\FSM_onehot_state_curr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \FSM_onehot_state_curr[0]_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I1(opcode_IBUF[4]),
        .I2(opcode_IBUF[5]),
        .I3(opcode_IBUF[6]),
        .I4(\FSM_onehot_state_curr[1]_i_2_n_0 ),
        .I5(opcode_IBUF[2]),
        .O(\FSM_onehot_state_curr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF02)) 
    \FSM_onehot_state_curr[0]_i_3 
       (.I0(we_pc_OBUF),
        .I1(\FSM_onehot_state_curr[15]_i_2_n_0 ),
        .I2(we_alu_OBUF),
        .I3(mux_wb_OBUF[2]),
        .I4(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_curr_reg_n_0_[3] ),
        .O(\FSM_onehot_state_curr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_state_curr[10]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[1]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[2]),
        .I5(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \FSM_onehot_state_curr[11]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[1]),
        .I3(funct3_IBUF[2]),
        .I4(funct3_IBUF[0]),
        .I5(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \FSM_onehot_state_curr[12]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[2]),
        .I4(funct3_IBUF[1]),
        .I5(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \FSM_onehot_state_curr[13]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[1]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[2]),
        .I5(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022202000)) 
    \FSM_onehot_state_curr[14]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[1]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[2]),
        .I5(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_curr[14]_i_2 
       (.I0(opcode_IBUF[6]),
        .I1(opcode_IBUF[2]),
        .I2(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I3(opcode_IBUF[3]),
        .I4(opcode_IBUF[4]),
        .I5(opcode_IBUF[5]),
        .O(\FSM_onehot_state_curr[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state_curr[15]_i_1 
       (.I0(we_alu_OBUF),
        .I1(\FSM_onehot_state_curr[15]_i_2_n_0 ),
        .I2(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state_curr[15]_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[10] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[13] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[12] ),
        .I3(mux_load_OBUF[2]),
        .I4(\FSM_onehot_state_curr_reg_n_0_[11] ),
        .O(\FSM_onehot_state_curr[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_onehot_state_curr[16]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[2]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[1]),
        .I5(\FSM_onehot_state_curr[18]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \FSM_onehot_state_curr[17]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[2]),
        .I4(funct3_IBUF[1]),
        .I5(\FSM_onehot_state_curr[18]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22200000)) 
    \FSM_onehot_state_curr[18]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(funct3_IBUF[1]),
        .I3(funct3_IBUF[2]),
        .I4(\FSM_onehot_state_curr[18]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_state_curr[18]_i_2 
       (.I0(opcode_IBUF[5]),
        .I1(opcode_IBUF[6]),
        .I2(opcode_IBUF[2]),
        .I3(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I4(opcode_IBUF[3]),
        .I5(opcode_IBUF[4]),
        .O(\FSM_onehot_state_curr[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \FSM_onehot_state_curr[19]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I2(opcode_IBUF[0]),
        .I3(opcode_IBUF[1]),
        .I4(opcode_IBUF[3]),
        .I5(\FSM_onehot_state_curr[19]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state_curr[19]_i_2 
       (.I0(opcode_IBUF[2]),
        .I1(opcode_IBUF[4]),
        .I2(opcode_IBUF[6]),
        .I3(opcode_IBUF[5]),
        .O(\FSM_onehot_state_curr[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \FSM_onehot_state_curr[1]_i_1 
       (.I0(opcode_IBUF[6]),
        .I1(opcode_IBUF[4]),
        .I2(opcode_IBUF[5]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(opcode_IBUF[2]),
        .I5(\FSM_onehot_state_curr[1]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_onehot_state_curr[1]_i_2 
       (.I0(opcode_IBUF[0]),
        .I1(opcode_IBUF[1]),
        .I2(opcode_IBUF[3]),
        .O(\FSM_onehot_state_curr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_state_curr[20]_i_1 
       (.I0(funct3_IBUF[1]),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[0]),
        .I3(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022F00000220000)) 
    \FSM_onehot_state_curr[21]_i_1 
       (.I0(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .I1(funct3_IBUF[0]),
        .I2(mux_se_OBUF[1]),
        .I3(funct3_IBUF[2]),
        .I4(funct3_IBUF[1]),
        .I5(\FSM_onehot_state_curr[21]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_curr[21]_i_2 
       (.I0(mux_se_OBUF[0]),
        .I1(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_state_curr[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h002000AA00000000)) 
    \FSM_onehot_state_curr[22]_i_1 
       (.I0(funct3_IBUF[1]),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[0]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_curr[22]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAEFFAAAEAE)) 
    \FSM_onehot_state_curr[22]_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I1(mux_se_OBUF[1]),
        .I2(mux_se_OBUF[0]),
        .I3(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_curr[22]_i_3_n_0 ),
        .O(\FSM_onehot_state_curr[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state_curr[22]_i_3 
       (.I0(funct3_IBUF[2]),
        .I1(funct3_IBUF[0]),
        .O(\FSM_onehot_state_curr[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0440004404404400)) 
    \FSM_onehot_state_curr[23]_i_1 
       (.I0(\FSM_onehot_state_curr[24]_i_4_n_0 ),
        .I1(\FSM_onehot_state_curr[24]_i_2_n_0 ),
        .I2(alu_result_IBUF[0]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[2]),
        .I5(\FSM_onehot_state_curr[24]_i_3_n_0 ),
        .O(\FSM_onehot_state_curr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A80208A2)) 
    \FSM_onehot_state_curr[24]_i_1 
       (.I0(\FSM_onehot_state_curr[24]_i_2_n_0 ),
        .I1(\FSM_onehot_state_curr[24]_i_3_n_0 ),
        .I2(funct3_IBUF[2]),
        .I3(funct3_IBUF[0]),
        .I4(alu_result_IBUF[0]),
        .I5(\FSM_onehot_state_curr[24]_i_4_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_curr[24]_i_10 
       (.I0(alu_result_IBUF[11]),
        .I1(alu_result_IBUF[10]),
        .I2(alu_result_IBUF[9]),
        .I3(alu_result_IBUF[8]),
        .O(\FSM_onehot_state_curr[24]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_curr[24]_i_11 
       (.I0(alu_result_IBUF[7]),
        .I1(alu_result_IBUF[6]),
        .I2(alu_result_IBUF[5]),
        .I3(alu_result_IBUF[4]),
        .O(\FSM_onehot_state_curr[24]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_curr[24]_i_12 
       (.I0(alu_result_IBUF[27]),
        .I1(alu_result_IBUF[26]),
        .I2(alu_result_IBUF[25]),
        .I3(alu_result_IBUF[24]),
        .O(\FSM_onehot_state_curr[24]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state_curr[24]_i_13 
       (.I0(alu_result_IBUF[23]),
        .I1(alu_result_IBUF[22]),
        .I2(alu_result_IBUF[21]),
        .I3(alu_result_IBUF[20]),
        .O(\FSM_onehot_state_curr[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055551110)) 
    \FSM_onehot_state_curr[24]_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[20] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[21] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[22] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[5] ),
        .I5(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state_curr[24]_i_3 
       (.I0(\FSM_onehot_state_curr[24]_i_5_n_0 ),
        .I1(\FSM_onehot_state_curr[24]_i_6_n_0 ),
        .I2(\FSM_onehot_state_curr[24]_i_7_n_0 ),
        .I3(\FSM_onehot_state_curr[24]_i_8_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_onehot_state_curr[24]_i_4 
       (.I0(opcode_IBUF[6]),
        .I1(opcode_IBUF[5]),
        .I2(opcode_IBUF[4]),
        .I3(opcode_IBUF[3]),
        .I4(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I5(opcode_IBUF[2]),
        .O(\FSM_onehot_state_curr[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_curr[24]_i_5 
       (.I0(alu_result_IBUF[12]),
        .I1(alu_result_IBUF[13]),
        .I2(alu_result_IBUF[14]),
        .I3(alu_result_IBUF[16]),
        .I4(\FSM_onehot_state_curr[24]_i_10_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_curr[24]_i_6 
       (.I0(alu_result_IBUF[2]),
        .I1(alu_result_IBUF[3]),
        .I2(alu_result_IBUF[0]),
        .I3(alu_result_IBUF[1]),
        .I4(\FSM_onehot_state_curr[24]_i_11_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_curr[24]_i_7 
       (.I0(alu_result_IBUF[28]),
        .I1(alu_result_IBUF[29]),
        .I2(alu_result_IBUF[30]),
        .I3(alu_result_IBUF[31]),
        .I4(\FSM_onehot_state_curr[24]_i_12_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_onehot_state_curr[24]_i_8 
       (.I0(alu_result_IBUF[18]),
        .I1(alu_result_IBUF[19]),
        .I2(alu_result_IBUF[15]),
        .I3(alu_result_IBUF[17]),
        .I4(\FSM_onehot_state_curr[24]_i_13_n_0 ),
        .O(\FSM_onehot_state_curr[24]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state_curr[24]_i_9 
       (.I0(opcode_IBUF[1]),
        .I1(opcode_IBUF[0]),
        .O(\FSM_onehot_state_curr[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_state_curr[25]_i_1 
       (.I0(funct3_IBUF[1]),
        .I1(funct3_IBUF[0]),
        .I2(funct3_IBUF[2]),
        .I3(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \FSM_onehot_state_curr[26]_i_1 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .I2(funct7_IBUF),
        .I3(funct3_IBUF[1]),
        .I4(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_onehot_state_curr[27]_i_1 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .I2(funct7_IBUF),
        .I3(funct3_IBUF[1]),
        .I4(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_state_curr[28]_i_1 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[1]),
        .I3(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state_curr[29]_i_1 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[1]),
        .I3(\FSM_onehot_state_curr[29]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \FSM_onehot_state_curr[29]_i_2 
       (.I0(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_state_curr[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_curr[2]_i_1 
       (.I0(\FSM_onehot_state_curr[18]_i_2_n_0 ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .O(\FSM_onehot_state_curr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F0000000700)) 
    \FSM_onehot_state_curr[30]_i_1 
       (.I0(opcode_IBUF[6]),
        .I1(\FSM_onehot_state_curr[30]_i_2_n_0 ),
        .I2(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I3(we_alu_OBUF),
        .I4(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I5(\FSM_onehot_state_curr[30]_i_3_n_0 ),
        .O(\FSM_onehot_state_curr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF54)) 
    \FSM_onehot_state_curr[30]_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[20] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[21] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[22] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[5] ),
        .O(\FSM_onehot_state_curr[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FC4)) 
    \FSM_onehot_state_curr[30]_i_3 
       (.I0(opcode_IBUF[5]),
        .I1(opcode_IBUF[6]),
        .I2(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I3(opcode_IBUF[2]),
        .I4(opcode_IBUF[4]),
        .I5(\FSM_onehot_state_curr[1]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_state_curr[3]_i_1 
       (.I0(opcode_IBUF[1]),
        .I1(opcode_IBUF[0]),
        .I2(opcode_IBUF[3]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_curr[19]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_curr[4]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_curr[24]_i_4_n_0 ),
        .O(\FSM_onehot_state_curr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state_curr[5]_i_1 
       (.I0(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .I1(funct3_IBUF[0]),
        .I2(funct7_IBUF),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_curr[5]_i_3_n_0 ),
        .O(\FSM_onehot_state_curr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state_curr[5]_i_2 
       (.I0(funct3_IBUF[1]),
        .I1(funct3_IBUF[2]),
        .O(\FSM_onehot_state_curr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state_curr[5]_i_3 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I1(mux_se_OBUF[0]),
        .I2(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I5(mux_se_OBUF[1]),
        .O(\FSM_onehot_state_curr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state_curr[6]_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I1(opcode_IBUF[5]),
        .I2(\FSM_onehot_state_curr[7]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_state_curr[7]_i_1 
       (.I0(opcode_IBUF[5]),
        .I1(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_curr[7]_i_2_n_0 ),
        .O(\FSM_onehot_state_curr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_onehot_state_curr[7]_i_2 
       (.I0(opcode_IBUF[0]),
        .I1(opcode_IBUF[1]),
        .I2(opcode_IBUF[3]),
        .I3(opcode_IBUF[2]),
        .I4(opcode_IBUF[4]),
        .I5(opcode_IBUF[6]),
        .O(\FSM_onehot_state_curr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFAABFAABFAAFFAA)) 
    \FSM_onehot_state_curr[8]_i_1 
       (.I0(\FSM_onehot_state_curr[8]_i_2_n_0 ),
        .I1(opcode_IBUF[0]),
        .I2(opcode_IBUF[1]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(opcode_IBUF[5]),
        .I5(opcode_IBUF[2]),
        .O(\FSM_onehot_state_curr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF0000A2A20000)) 
    \FSM_onehot_state_curr[8]_i_2 
       (.I0(opcode_IBUF[2]),
        .I1(opcode_IBUF[4]),
        .I2(opcode_IBUF[6]),
        .I3(opcode_IBUF[5]),
        .I4(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I5(opcode_IBUF[3]),
        .O(\FSM_onehot_state_curr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFCFFEEEE)) 
    \FSM_onehot_state_curr[9]_i_1 
       (.I0(mux_se_OBUF[0]),
        .I1(\FSM_onehot_state_curr[9]_i_2_n_0 ),
        .I2(\FSM_onehot_state_curr[9]_i_3_n_0 ),
        .I3(\FSM_onehot_state_curr[14]_i_2_n_0 ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I5(\FSM_onehot_state_curr[9]_i_4_n_0 ),
        .O(\FSM_onehot_state_curr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_onehot_state_curr[9]_i_2 
       (.I0(funct7_IBUF),
        .I1(funct3_IBUF[1]),
        .I2(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I4(funct3_IBUF[2]),
        .I5(funct3_IBUF[0]),
        .O(\FSM_onehot_state_curr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state_curr[9]_i_3 
       (.I0(funct3_IBUF[2]),
        .I1(funct3_IBUF[0]),
        .I2(funct3_IBUF[1]),
        .O(\FSM_onehot_state_curr[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state_curr[9]_i_4 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .O(\FSM_onehot_state_curr[9]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .S(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[10] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[11] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[12] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[13]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[13] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[14]_i_1_n_0 ),
        .Q(mux_load_OBUF[2]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[15]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[15] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[16]_i_1_n_0 ),
        .Q(mux_store_OBUF[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[17]_i_1_n_0 ),
        .Q(mux_store_OBUF[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[18]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[18] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[19]_i_1_n_0 ),
        .Q(mux_jalr_OBUF),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[20]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[20] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[21]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[21] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[22]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[22] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[23]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[23] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[24]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[24] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[25]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[25] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[26]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[26] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[27]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[27] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[28]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[28] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[29]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[29] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[2]_i_1_n_0 ),
        .Q(mux_se_OBUF[0]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[30]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[30] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[3] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[4]_i_1_n_0 ),
        .Q(mux_se_OBUF[1]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[5] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[7]_i_1_n_0 ),
        .Q(mux_wb_OBUF[2]),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .R(rst_IBUF));
  (* FSM_ENCODED_STATES = "STATE_WB_BT:0000000100000000000000000000000,STATE_EX_SRA:0001000000000000000000000000000,STATE_WB_BNT:0000001000000000000000000000000,STATE_EX_SRL:0000100000000000000000000000000,STATE_EX_XOR:0000010000000000000000000000000,STATE_MEM_LW:0000000000000000001000000000000,STATE_MEM_LH:0000000000000000000100000000000,STATE_ID_BTYPE:0000000000000000000000000010000,STATE_MEM_LB:0000000000000000000010000000000,STATE_ID_ITYPE:0000000000000000000000100000000,STATE_WB_JALR:0000000000010000000000000000000,STATE_EX_AND:0100000000000000000000000000000,STATE_WB_LOAD:0000000000000001000000000000000,STATE_MEM_SH:0000000000000100000000000000000,STATE_ID_RTYPE:0000000000000000000000000000010,STATE_MEM_SB:0000000000000010000000000000000,STATE_EX_SLTU:0000000010000000000000000000000,STATE_IF_INIT:0000000000000000000000000000001,STATE_WB_GEN:1000000000000000000000000000000,STATE_EX_SLT:0000000001000000000000000000000,STATE_MEM_SW:0000000000001000000000000000000,STATE_EX_ADD:0000000000000000000001000000000,STATE_MEM_LHU:0000000000000000100000000000000,STATE_ID_LUI:0000000000000000000000001000000,STATE_UNUSED_1:11111,STATE_MEM_LBU:0000000000000000010000000000000,STATE_EX_SLL:0000000000100000000000000000000,STATE_EX_SUB:0000000000000000000000000100000,STATE_ID_AUIPC:0000000000000000000000010000000,STATE_ID_JTYPE:0000000000000000000000000001000,STATE_ID_STYPE:0000000000000000000000000000100,STATE_EX_OR:0010000000000000000000000000000" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_state_curr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_curr[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .R(rst_IBUF));
  IBUF \alu_result_IBUF[0]_inst 
       (.I(alu_result[0]),
        .O(alu_result_IBUF[0]));
  IBUF \alu_result_IBUF[10]_inst 
       (.I(alu_result[10]),
        .O(alu_result_IBUF[10]));
  IBUF \alu_result_IBUF[11]_inst 
       (.I(alu_result[11]),
        .O(alu_result_IBUF[11]));
  IBUF \alu_result_IBUF[12]_inst 
       (.I(alu_result[12]),
        .O(alu_result_IBUF[12]));
  IBUF \alu_result_IBUF[13]_inst 
       (.I(alu_result[13]),
        .O(alu_result_IBUF[13]));
  IBUF \alu_result_IBUF[14]_inst 
       (.I(alu_result[14]),
        .O(alu_result_IBUF[14]));
  IBUF \alu_result_IBUF[15]_inst 
       (.I(alu_result[15]),
        .O(alu_result_IBUF[15]));
  IBUF \alu_result_IBUF[16]_inst 
       (.I(alu_result[16]),
        .O(alu_result_IBUF[16]));
  IBUF \alu_result_IBUF[17]_inst 
       (.I(alu_result[17]),
        .O(alu_result_IBUF[17]));
  IBUF \alu_result_IBUF[18]_inst 
       (.I(alu_result[18]),
        .O(alu_result_IBUF[18]));
  IBUF \alu_result_IBUF[19]_inst 
       (.I(alu_result[19]),
        .O(alu_result_IBUF[19]));
  IBUF \alu_result_IBUF[1]_inst 
       (.I(alu_result[1]),
        .O(alu_result_IBUF[1]));
  IBUF \alu_result_IBUF[20]_inst 
       (.I(alu_result[20]),
        .O(alu_result_IBUF[20]));
  IBUF \alu_result_IBUF[21]_inst 
       (.I(alu_result[21]),
        .O(alu_result_IBUF[21]));
  IBUF \alu_result_IBUF[22]_inst 
       (.I(alu_result[22]),
        .O(alu_result_IBUF[22]));
  IBUF \alu_result_IBUF[23]_inst 
       (.I(alu_result[23]),
        .O(alu_result_IBUF[23]));
  IBUF \alu_result_IBUF[24]_inst 
       (.I(alu_result[24]),
        .O(alu_result_IBUF[24]));
  IBUF \alu_result_IBUF[25]_inst 
       (.I(alu_result[25]),
        .O(alu_result_IBUF[25]));
  IBUF \alu_result_IBUF[26]_inst 
       (.I(alu_result[26]),
        .O(alu_result_IBUF[26]));
  IBUF \alu_result_IBUF[27]_inst 
       (.I(alu_result[27]),
        .O(alu_result_IBUF[27]));
  IBUF \alu_result_IBUF[28]_inst 
       (.I(alu_result[28]),
        .O(alu_result_IBUF[28]));
  IBUF \alu_result_IBUF[29]_inst 
       (.I(alu_result[29]),
        .O(alu_result_IBUF[29]));
  IBUF \alu_result_IBUF[2]_inst 
       (.I(alu_result[2]),
        .O(alu_result_IBUF[2]));
  IBUF \alu_result_IBUF[30]_inst 
       (.I(alu_result[30]),
        .O(alu_result_IBUF[30]));
  IBUF \alu_result_IBUF[31]_inst 
       (.I(alu_result[31]),
        .O(alu_result_IBUF[31]));
  IBUF \alu_result_IBUF[3]_inst 
       (.I(alu_result[3]),
        .O(alu_result_IBUF[3]));
  IBUF \alu_result_IBUF[4]_inst 
       (.I(alu_result[4]),
        .O(alu_result_IBUF[4]));
  IBUF \alu_result_IBUF[5]_inst 
       (.I(alu_result[5]),
        .O(alu_result_IBUF[5]));
  IBUF \alu_result_IBUF[6]_inst 
       (.I(alu_result[6]),
        .O(alu_result_IBUF[6]));
  IBUF \alu_result_IBUF[7]_inst 
       (.I(alu_result[7]),
        .O(alu_result_IBUF[7]));
  IBUF \alu_result_IBUF[8]_inst 
       (.I(alu_result[8]),
        .O(alu_result_IBUF[8]));
  IBUF \alu_result_IBUF[9]_inst 
       (.I(alu_result[9]),
        .O(alu_result_IBUF[9]));
  OBUF \aluop_OBUF[0]_inst 
       (.I(aluop_OBUF[0]),
        .O(aluop[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \aluop_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[27] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[26] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[29] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[20] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[22] ),
        .O(aluop_OBUF[0]));
  OBUF \aluop_OBUF[1]_inst 
       (.I(aluop_OBUF[1]),
        .O(aluop[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \aluop_OBUF[1]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[29] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[28] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[22] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[21] ),
        .O(aluop_OBUF[1]));
  OBUF \aluop_OBUF[2]_inst 
       (.I(aluop_OBUF[2]),
        .O(aluop[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \aluop_OBUF[2]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[27] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[26] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[25] ),
        .I3(\FSM_onehot_state_curr_reg_n_0_[29] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[28] ),
        .O(aluop_OBUF[2]));
  OBUF \aluop_OBUF[3]_inst 
       (.I(aluop_OBUF[3]),
        .O(aluop[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \aluop_OBUF[3]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[27] ),
        .O(aluop_OBUF[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \funct3_IBUF[0]_inst 
       (.I(funct3[0]),
        .O(funct3_IBUF[0]));
  IBUF \funct3_IBUF[1]_inst 
       (.I(funct3[1]),
        .O(funct3_IBUF[1]));
  IBUF \funct3_IBUF[2]_inst 
       (.I(funct3[2]),
        .O(funct3_IBUF[2]));
  IBUF funct7_IBUF_inst
       (.I(funct7),
        .O(funct7_IBUF));
  OBUF mux_alu_OBUF_inst
       (.I(mux_alu_OBUF),
        .O(mux_alu));
  LUT3 #(
    .INIT(8'hFE)) 
    mux_alu_OBUF_inst_i_1
       (.I0(mux_se_OBUF[0]),
        .I1(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .I2(mux_se_OBUF[1]),
        .O(mux_alu_OBUF));
  OBUF mux_jalr_OBUF_inst
       (.I(mux_jalr_OBUF),
        .O(mux_jalr));
  OBUF \mux_load_OBUF[0]_inst 
       (.I(mux_load_OBUF[0]),
        .O(mux_load[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mux_load_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[11] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[13] ),
        .O(mux_load_OBUF[0]));
  OBUF \mux_load_OBUF[1]_inst 
       (.I(mux_load_OBUF[1]),
        .O(mux_load[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \mux_load_OBUF[1]_inst_i_1 
       (.I0(\mux_load_OBUF[1]_inst_i_2_n_0 ),
        .I1(we_alu_OBUF),
        .I2(\FSM_onehot_state_curr_reg_n_0_[13] ),
        .I3(we_pc_OBUF),
        .I4(\FSM_onehot_state_curr_reg_n_0_[12] ),
        .O(mux_load_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mux_load_OBUF[1]_inst_i_2 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[1] ),
        .I2(\mux_load_OBUF[1]_inst_i_3_n_0 ),
        .I3(mux_se_OBUF[1]),
        .I4(mux_se_OBUF[0]),
        .I5(\FSM_onehot_state_curr_reg_n_0_[8] ),
        .O(\mux_load_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mux_load_OBUF[1]_inst_i_3 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .I2(mux_wb_OBUF[2]),
        .O(\mux_load_OBUF[1]_inst_i_3_n_0 ));
  OBUF \mux_load_OBUF[2]_inst 
       (.I(mux_load_OBUF[2]),
        .O(mux_load[2]));
  OBUF mux_pc_OBUF_inst
       (.I(mux_pc_OBUF),
        .O(mux_pc));
  LUT2 #(
    .INIT(4'hE)) 
    mux_pc_OBUF_inst_i_1
       (.I0(mux_jalr_OBUF),
        .I1(\FSM_onehot_state_curr_reg_n_0_[23] ),
        .O(mux_pc_OBUF));
  OBUF \mux_se_OBUF[0]_inst 
       (.I(mux_se_OBUF[0]),
        .O(mux_se[0]));
  OBUF \mux_se_OBUF[1]_inst 
       (.I(mux_se_OBUF[1]),
        .O(mux_se[1]));
  OBUF \mux_se_OBUF[2]_inst 
       (.I(1'b0),
        .O(mux_se[2]));
  OBUF \mux_store_OBUF[0]_inst 
       (.I(mux_store_OBUF[0]),
        .O(mux_store[0]));
  OBUF \mux_store_OBUF[1]_inst 
       (.I(mux_store_OBUF[1]),
        .O(mux_store[1]));
  OBUF \mux_wb_OBUF[0]_inst 
       (.I(mux_wb_OBUF[0]),
        .O(mux_wb[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \mux_wb_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[15] ),
        .O(mux_wb_OBUF[0]));
  OBUF \mux_wb_OBUF[1]_inst 
       (.I(mux_wb_OBUF[1]),
        .O(mux_wb[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \mux_wb_OBUF[1]_inst_i_1 
       (.I0(\FSM_onehot_state_curr_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .I2(mux_jalr_OBUF),
        .O(mux_wb_OBUF[1]));
  OBUF \mux_wb_OBUF[2]_inst 
       (.I(mux_wb_OBUF[2]),
        .O(mux_wb[2]));
  IBUF \opcode_IBUF[0]_inst 
       (.I(opcode[0]),
        .O(opcode_IBUF[0]));
  IBUF \opcode_IBUF[1]_inst 
       (.I(opcode[1]),
        .O(opcode_IBUF[1]));
  IBUF \opcode_IBUF[2]_inst 
       (.I(opcode[2]),
        .O(opcode_IBUF[2]));
  IBUF \opcode_IBUF[3]_inst 
       (.I(opcode[3]),
        .O(opcode_IBUF[3]));
  IBUF \opcode_IBUF[4]_inst 
       (.I(opcode[4]),
        .O(opcode_IBUF[4]));
  IBUF \opcode_IBUF[5]_inst 
       (.I(opcode[5]),
        .O(opcode_IBUF[5]));
  IBUF \opcode_IBUF[6]_inst 
       (.I(opcode[6]),
        .O(opcode_IBUF[6]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT6 #(
    .INIT(64'h0F000F000EFF0E00)) 
    \state_curr[0]_i_1 
       (.I0(\state_curr[0]_i_2_n_0 ),
        .I1(\state_curr[0]_i_3_n_0 ),
        .I2(state_reg_test_OBUF[4]),
        .I3(\state_curr[0]_i_4_n_0 ),
        .I4(\state_curr[0]_i_5_n_0 ),
        .I5(state_reg_test_OBUF[2]),
        .O(\state_curr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_curr[0]_i_10 
       (.I0(state_reg_test_OBUF[1]),
        .I1(state_reg_test_OBUF[4]),
        .O(\state_curr[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \state_curr[0]_i_11 
       (.I0(opcode_IBUF[3]),
        .I1(opcode_IBUF[4]),
        .I2(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I3(opcode_IBUF[6]),
        .I4(\state_curr[0]_i_19_n_0 ),
        .I5(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .O(\state_curr[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h10F0)) 
    \state_curr[0]_i_12 
       (.I0(funct7_IBUF),
        .I1(funct3_IBUF[1]),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[2]),
        .O(\state_curr[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00820200)) 
    \state_curr[0]_i_13 
       (.I0(\state_curr[0]_i_20_n_0 ),
        .I1(opcode_IBUF[3]),
        .I2(opcode_IBUF[2]),
        .I3(opcode_IBUF[4]),
        .I4(opcode_IBUF[6]),
        .O(\state_curr[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00F000200000FF00)) 
    \state_curr[0]_i_14 
       (.I0(funct3_IBUF[2]),
        .I1(funct3_IBUF[0]),
        .I2(funct3_IBUF[1]),
        .I3(state_reg_test_OBUF[4]),
        .I4(state_reg_test_OBUF[0]),
        .I5(state_reg_test_OBUF[1]),
        .O(\state_curr[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state_curr[0]_i_15 
       (.I0(alu_result_IBUF[1]),
        .I1(alu_result_IBUF[0]),
        .I2(alu_result_IBUF[3]),
        .I3(alu_result_IBUF[2]),
        .O(\state_curr[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state_curr[0]_i_16 
       (.I0(alu_result_IBUF[16]),
        .I1(alu_result_IBUF[14]),
        .I2(alu_result_IBUF[13]),
        .I3(alu_result_IBUF[12]),
        .O(\state_curr[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state_curr[0]_i_17 
       (.I0(alu_result_IBUF[17]),
        .I1(alu_result_IBUF[15]),
        .I2(alu_result_IBUF[19]),
        .I3(alu_result_IBUF[18]),
        .O(\state_curr[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state_curr[0]_i_18 
       (.I0(alu_result_IBUF[31]),
        .I1(alu_result_IBUF[30]),
        .I2(alu_result_IBUF[29]),
        .I3(alu_result_IBUF[28]),
        .O(\state_curr[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_curr[0]_i_19 
       (.I0(opcode_IBUF[2]),
        .I1(opcode_IBUF[5]),
        .O(\state_curr[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBEAFBEFABEFABEFA)) 
    \state_curr[0]_i_2 
       (.I0(\FSM_onehot_state_curr[24]_i_4_n_0 ),
        .I1(alu_result_IBUF[0]),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[2]),
        .I4(\state_curr[0]_i_6_n_0 ),
        .I5(\state_curr[0]_i_7_n_0 ),
        .O(\state_curr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \state_curr[0]_i_20 
       (.I0(opcode_IBUF[1]),
        .I1(opcode_IBUF[0]),
        .I2(opcode_IBUF[5]),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[0]),
        .O(\state_curr[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state_curr[0]_i_3 
       (.I0(state_reg_test_OBUF[0]),
        .I1(state_reg_test_OBUF[1]),
        .O(\state_curr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCCCFFCCEECCCC)) 
    \state_curr[0]_i_4 
       (.I0(\state_curr[0]_i_8_n_0 ),
        .I1(state_reg_test_OBUF[3]),
        .I2(\state_curr[0]_i_9_n_0 ),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[0]),
        .I5(state_reg_test_OBUF[2]),
        .O(\state_curr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4440)) 
    \state_curr[0]_i_5 
       (.I0(state_reg_test_OBUF[0]),
        .I1(\state_curr[0]_i_10_n_0 ),
        .I2(\state_curr[0]_i_11_n_0 ),
        .I3(\state_curr[0]_i_12_n_0 ),
        .I4(\state_curr[0]_i_13_n_0 ),
        .I5(\state_curr[0]_i_14_n_0 ),
        .O(\state_curr[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state_curr[0]_i_6 
       (.I0(\FSM_onehot_state_curr[24]_i_11_n_0 ),
        .I1(\state_curr[0]_i_15_n_0 ),
        .I2(\FSM_onehot_state_curr[24]_i_10_n_0 ),
        .I3(\state_curr[0]_i_16_n_0 ),
        .O(\state_curr[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \state_curr[0]_i_7 
       (.I0(\FSM_onehot_state_curr[24]_i_13_n_0 ),
        .I1(\state_curr[0]_i_17_n_0 ),
        .I2(\FSM_onehot_state_curr[24]_i_12_n_0 ),
        .I3(\state_curr[0]_i_18_n_0 ),
        .O(\state_curr[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h3C71)) 
    \state_curr[0]_i_8 
       (.I0(funct7_IBUF),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[1]),
        .O(\state_curr[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hBBBBBAEB)) 
    \state_curr[0]_i_9 
       (.I0(\state_curr[2]_i_9_n_0 ),
        .I1(opcode_IBUF[5]),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[2]),
        .I4(funct3_IBUF[1]),
        .O(\state_curr[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFEEE)) 
    \state_curr[1]_i_1 
       (.I0(\state_curr[1]_i_2_n_0 ),
        .I1(\state_curr[1]_i_3_n_0 ),
        .I2(\state_curr[1]_i_4_n_0 ),
        .I3(\state_curr[1]_i_5_n_0 ),
        .I4(\state_curr[1]_i_6_n_0 ),
        .I5(\state_curr[1]_i_7_n_0 ),
        .O(\state_curr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \state_curr[1]_i_10 
       (.I0(opcode_IBUF[5]),
        .I1(opcode_IBUF[6]),
        .I2(opcode_IBUF[4]),
        .I3(opcode_IBUF[2]),
        .I4(opcode_IBUF[3]),
        .I5(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .O(\state_curr[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0010110011001101)) 
    \state_curr[1]_i_11 
       (.I0(state_reg_test_OBUF[1]),
        .I1(state_reg_test_OBUF[2]),
        .I2(funct7_IBUF),
        .I3(funct3_IBUF[1]),
        .I4(funct3_IBUF[0]),
        .I5(funct3_IBUF[2]),
        .O(\state_curr[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0000000AE)) 
    \state_curr[1]_i_2 
       (.I0(state_reg_test_OBUF[2]),
        .I1(\state_curr[1]_i_8_n_0 ),
        .I2(state_reg_test_OBUF[4]),
        .I3(state_reg_test_OBUF[3]),
        .I4(state_reg_test_OBUF[1]),
        .I5(state_reg_test_OBUF[0]),
        .O(\state_curr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7971FFFF00000000)) 
    \state_curr[1]_i_3 
       (.I0(funct3_IBUF[2]),
        .I1(funct3_IBUF[0]),
        .I2(funct3_IBUF[1]),
        .I3(funct7_IBUF),
        .I4(\state_curr[4]_i_7_n_0 ),
        .I5(\state_curr[1]_i_9_n_0 ),
        .O(\state_curr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state_curr[1]_i_4 
       (.I0(state_reg_test_OBUF[0]),
        .I1(state_reg_test_OBUF[3]),
        .O(\state_curr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0005010400000000)) 
    \state_curr[1]_i_5 
       (.I0(\state_curr[2]_i_9_n_0 ),
        .I1(opcode_IBUF[5]),
        .I2(funct3_IBUF[2]),
        .I3(funct3_IBUF[1]),
        .I4(funct3_IBUF[0]),
        .I5(\state_curr[4]_i_2_n_0 ),
        .O(\state_curr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFA0FFFFFF88)) 
    \state_curr[1]_i_6 
       (.I0(state_reg_test_OBUF[1]),
        .I1(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .I2(\state_curr[1]_i_10_n_0 ),
        .I3(\state_curr[1]_i_11_n_0 ),
        .I4(state_reg_test_OBUF[4]),
        .I5(state_reg_test_OBUF[2]),
        .O(\state_curr[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \state_curr[1]_i_7 
       (.I0(state_reg_test_OBUF[1]),
        .I1(state_reg_test_OBUF[3]),
        .I2(state_reg_test_OBUF[2]),
        .I3(state_reg_test_OBUF[4]),
        .O(\state_curr[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFF3B)) 
    \state_curr[1]_i_8 
       (.I0(opcode_IBUF[6]),
        .I1(opcode_IBUF[5]),
        .I2(opcode_IBUF[4]),
        .I3(opcode_IBUF[3]),
        .I4(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I5(opcode_IBUF[2]),
        .O(\state_curr[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state_curr[1]_i_9 
       (.I0(state_reg_test_OBUF[1]),
        .I1(state_reg_test_OBUF[3]),
        .I2(state_reg_test_OBUF[2]),
        .I3(state_reg_test_OBUF[0]),
        .O(\state_curr[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \state_curr[2]_i_1 
       (.I0(\state_curr[2]_i_2_n_0 ),
        .I1(\state_curr[2]_i_3_n_0 ),
        .I2(\state_curr[2]_i_4_n_0 ),
        .I3(\state_curr[2]_i_5_n_0 ),
        .I4(\FSM_onehot_state_curr[7]_i_2_n_0 ),
        .I5(\state_curr[2]_i_6_n_0 ),
        .O(\state_curr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888C8888888)) 
    \state_curr[2]_i_10 
       (.I0(state_reg_test_OBUF[2]),
        .I1(\state_curr[2]_i_6_n_0 ),
        .I2(opcode_IBUF[1]),
        .I3(opcode_IBUF[0]),
        .I4(opcode_IBUF[3]),
        .I5(\FSM_onehot_state_curr[19]_i_2_n_0 ),
        .O(\state_curr[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \state_curr[2]_i_11 
       (.I0(state_reg_test_OBUF[2]),
        .I1(state_reg_test_OBUF[4]),
        .I2(state_reg_test_OBUF[0]),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[3]),
        .O(\state_curr[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \state_curr[2]_i_12 
       (.I0(state_reg_test_OBUF[4]),
        .I1(state_reg_test_OBUF[2]),
        .I2(state_reg_test_OBUF[0]),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[3]),
        .O(\state_curr[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF308080)) 
    \state_curr[2]_i_2 
       (.I0(\state_curr[2]_i_7_n_0 ),
        .I1(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .I2(\state_curr[2]_i_8_n_0 ),
        .I3(\state_curr[2]_i_6_n_0 ),
        .I4(opcode_IBUF[5]),
        .I5(\state_curr[2]_i_9_n_0 ),
        .O(\state_curr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEEEEFAAAAAAAA)) 
    \state_curr[2]_i_3 
       (.I0(\state_curr[2]_i_10_n_0 ),
        .I1(funct3_IBUF[2]),
        .I2(funct3_IBUF[0]),
        .I3(funct7_IBUF),
        .I4(funct3_IBUF[1]),
        .I5(\state_curr[2]_i_11_n_0 ),
        .O(\state_curr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000008A)) 
    \state_curr[2]_i_4 
       (.I0(state_reg_test_OBUF[3]),
        .I1(state_reg_test_OBUF[1]),
        .I2(state_reg_test_OBUF[0]),
        .I3(state_reg_test_OBUF[4]),
        .I4(state_reg_test_OBUF[2]),
        .I5(\FSM_onehot_state_curr[24]_i_4_n_0 ),
        .O(\state_curr[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h22A2A2AA)) 
    \state_curr[2]_i_5 
       (.I0(\state_curr[2]_i_12_n_0 ),
        .I1(\state_curr[4]_i_7_n_0 ),
        .I2(funct3_IBUF[2]),
        .I3(funct3_IBUF[0]),
        .I4(funct3_IBUF[1]),
        .O(\state_curr[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state_curr[2]_i_6 
       (.I0(state_reg_test_OBUF[4]),
        .I1(state_reg_test_OBUF[0]),
        .I2(state_reg_test_OBUF[1]),
        .I3(state_reg_test_OBUF[3]),
        .O(\state_curr[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state_curr[2]_i_7 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .O(\state_curr[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \state_curr[2]_i_8 
       (.I0(state_reg_test_OBUF[0]),
        .I1(state_reg_test_OBUF[3]),
        .I2(state_reg_test_OBUF[2]),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[4]),
        .O(\state_curr[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \state_curr[2]_i_9 
       (.I0(opcode_IBUF[4]),
        .I1(opcode_IBUF[3]),
        .I2(opcode_IBUF[1]),
        .I3(opcode_IBUF[0]),
        .I4(opcode_IBUF[2]),
        .I5(opcode_IBUF[6]),
        .O(\state_curr[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFE000)) 
    \state_curr[3]_i_1 
       (.I0(state_reg_test_OBUF[1]),
        .I1(\state_curr[3]_i_2_n_0 ),
        .I2(\state_curr[4]_i_5_n_0 ),
        .I3(state_reg_test_OBUF[0]),
        .I4(\state_curr[3]_i_3_n_0 ),
        .I5(\state_curr[3]_i_4_n_0 ),
        .O(\state_curr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h5FFE)) 
    \state_curr[3]_i_2 
       (.I0(funct3_IBUF[2]),
        .I1(funct7_IBUF),
        .I2(funct3_IBUF[0]),
        .I3(funct3_IBUF[1]),
        .O(\state_curr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000C000C0008000)) 
    \state_curr[3]_i_3 
       (.I0(funct3_IBUF[2]),
        .I1(\state_curr[4]_i_7_n_0 ),
        .I2(state_reg_test_OBUF[1]),
        .I3(\state_curr[4]_i_5_n_0 ),
        .I4(funct3_IBUF[0]),
        .I5(funct3_IBUF[1]),
        .O(\state_curr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAAAA)) 
    \state_curr[3]_i_4 
       (.I0(\state_curr[4]_i_4_n_0 ),
        .I1(state_reg_test_OBUF[1]),
        .I2(state_reg_test_OBUF[3]),
        .I3(state_reg_test_OBUF[2]),
        .I4(state_reg_test_OBUF[4]),
        .I5(\state_curr[3]_i_5_n_0 ),
        .O(\state_curr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0808080008000800)) 
    \state_curr[3]_i_5 
       (.I0(state_reg_test_OBUF[0]),
        .I1(state_reg_test_OBUF[1]),
        .I2(state_reg_test_OBUF[4]),
        .I3(\state_curr[2]_i_9_n_0 ),
        .I4(\FSM_onehot_state_curr[5]_i_2_n_0 ),
        .I5(opcode_IBUF[5]),
        .O(\state_curr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \state_curr[4]_i_1 
       (.I0(\state_curr[4]_i_2_n_0 ),
        .I1(state_reg_test_OBUF[0]),
        .I2(\state_curr[4]_i_3_n_0 ),
        .I3(\state_curr[4]_i_4_n_0 ),
        .I4(\state_curr[4]_i_5_n_0 ),
        .I5(state_reg_test_OBUF[4]),
        .O(\state_curr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state_curr[4]_i_2 
       (.I0(state_reg_test_OBUF[4]),
        .I1(state_reg_test_OBUF[1]),
        .I2(state_reg_test_OBUF[2]),
        .O(\state_curr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0440000004000000)) 
    \state_curr[4]_i_3 
       (.I0(\state_curr[4]_i_6_n_0 ),
        .I1(funct3_IBUF[1]),
        .I2(state_reg_test_OBUF[1]),
        .I3(state_reg_test_OBUF[0]),
        .I4(\state_curr[4]_i_5_n_0 ),
        .I5(\state_curr[4]_i_7_n_0 ),
        .O(\state_curr[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF262626)) 
    \state_curr[4]_i_4 
       (.I0(state_reg_test_OBUF[3]),
        .I1(state_reg_test_OBUF[4]),
        .I2(state_reg_test_OBUF[1]),
        .I3(\FSM_onehot_state_curr[7]_i_2_n_0 ),
        .I4(\state_curr[4]_i_8_n_0 ),
        .O(\state_curr[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state_curr[4]_i_5 
       (.I0(state_reg_test_OBUF[3]),
        .I1(state_reg_test_OBUF[2]),
        .O(\state_curr[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state_curr[4]_i_6 
       (.I0(funct3_IBUF[0]),
        .I1(funct3_IBUF[2]),
        .O(\state_curr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_curr[4]_i_7 
       (.I0(opcode_IBUF[2]),
        .I1(opcode_IBUF[5]),
        .I2(opcode_IBUF[6]),
        .I3(\FSM_onehot_state_curr[24]_i_9_n_0 ),
        .I4(opcode_IBUF[4]),
        .I5(opcode_IBUF[3]),
        .O(\state_curr[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state_curr[4]_i_8 
       (.I0(opcode_IBUF[5]),
        .I1(state_reg_test_OBUF[3]),
        .I2(state_reg_test_OBUF[2]),
        .I3(state_reg_test_OBUF[1]),
        .I4(state_reg_test_OBUF[0]),
        .O(\state_curr[4]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_curr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_curr[0]_i_1_n_0 ),
        .Q(state_reg_test_OBUF[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_curr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_curr[1]_i_1_n_0 ),
        .Q(state_reg_test_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_curr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_curr[2]_i_1_n_0 ),
        .Q(state_reg_test_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_curr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_curr[3]_i_1_n_0 ),
        .Q(state_reg_test_OBUF[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \state_curr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_curr[4]_i_1_n_0 ),
        .Q(state_reg_test_OBUF[4]),
        .R(rst_IBUF));
  OBUF \state_reg_test_OBUF[0]_inst 
       (.I(state_reg_test_OBUF[0]),
        .O(state_reg_test[0]));
  OBUF \state_reg_test_OBUF[10]_inst 
       (.I(1'b0),
        .O(state_reg_test[10]));
  OBUF \state_reg_test_OBUF[11]_inst 
       (.I(1'b0),
        .O(state_reg_test[11]));
  OBUF \state_reg_test_OBUF[12]_inst 
       (.I(1'b0),
        .O(state_reg_test[12]));
  OBUF \state_reg_test_OBUF[13]_inst 
       (.I(1'b0),
        .O(state_reg_test[13]));
  OBUF \state_reg_test_OBUF[14]_inst 
       (.I(1'b0),
        .O(state_reg_test[14]));
  OBUF \state_reg_test_OBUF[15]_inst 
       (.I(1'b0),
        .O(state_reg_test[15]));
  OBUF \state_reg_test_OBUF[16]_inst 
       (.I(1'b0),
        .O(state_reg_test[16]));
  OBUF \state_reg_test_OBUF[17]_inst 
       (.I(1'b0),
        .O(state_reg_test[17]));
  OBUF \state_reg_test_OBUF[18]_inst 
       (.I(1'b0),
        .O(state_reg_test[18]));
  OBUF \state_reg_test_OBUF[19]_inst 
       (.I(1'b0),
        .O(state_reg_test[19]));
  OBUF \state_reg_test_OBUF[1]_inst 
       (.I(state_reg_test_OBUF[1]),
        .O(state_reg_test[1]));
  OBUF \state_reg_test_OBUF[20]_inst 
       (.I(1'b0),
        .O(state_reg_test[20]));
  OBUF \state_reg_test_OBUF[21]_inst 
       (.I(1'b0),
        .O(state_reg_test[21]));
  OBUF \state_reg_test_OBUF[22]_inst 
       (.I(1'b0),
        .O(state_reg_test[22]));
  OBUF \state_reg_test_OBUF[23]_inst 
       (.I(1'b0),
        .O(state_reg_test[23]));
  OBUF \state_reg_test_OBUF[24]_inst 
       (.I(1'b0),
        .O(state_reg_test[24]));
  OBUF \state_reg_test_OBUF[25]_inst 
       (.I(1'b0),
        .O(state_reg_test[25]));
  OBUF \state_reg_test_OBUF[26]_inst 
       (.I(1'b0),
        .O(state_reg_test[26]));
  OBUF \state_reg_test_OBUF[27]_inst 
       (.I(1'b0),
        .O(state_reg_test[27]));
  OBUF \state_reg_test_OBUF[28]_inst 
       (.I(1'b0),
        .O(state_reg_test[28]));
  OBUF \state_reg_test_OBUF[29]_inst 
       (.I(1'b0),
        .O(state_reg_test[29]));
  OBUF \state_reg_test_OBUF[2]_inst 
       (.I(state_reg_test_OBUF[2]),
        .O(state_reg_test[2]));
  OBUF \state_reg_test_OBUF[30]_inst 
       (.I(1'b0),
        .O(state_reg_test[30]));
  OBUF \state_reg_test_OBUF[31]_inst 
       (.I(1'b0),
        .O(state_reg_test[31]));
  OBUF \state_reg_test_OBUF[3]_inst 
       (.I(state_reg_test_OBUF[3]),
        .O(state_reg_test[3]));
  OBUF \state_reg_test_OBUF[4]_inst 
       (.I(state_reg_test_OBUF[4]),
        .O(state_reg_test[4]));
  OBUF \state_reg_test_OBUF[5]_inst 
       (.I(1'b0),
        .O(state_reg_test[5]));
  OBUF \state_reg_test_OBUF[6]_inst 
       (.I(1'b0),
        .O(state_reg_test[6]));
  OBUF \state_reg_test_OBUF[7]_inst 
       (.I(1'b0),
        .O(state_reg_test[7]));
  OBUF \state_reg_test_OBUF[8]_inst 
       (.I(1'b0),
        .O(state_reg_test[8]));
  OBUF \state_reg_test_OBUF[9]_inst 
       (.I(1'b0),
        .O(state_reg_test[9]));
  OBUF we_alu_OBUF_inst
       (.I(we_alu_OBUF),
        .O(we_alu));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    we_alu_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_curr_reg_n_0_[9] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[20] ),
        .I2(we_alu_OBUF_inst_i_2_n_0),
        .I3(aluop_OBUF[1]),
        .I4(\FSM_onehot_state_curr_reg_n_0_[5] ),
        .O(we_alu_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    we_alu_OBUF_inst_i_2
       (.I0(\FSM_onehot_state_curr_reg_n_0_[25] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[26] ),
        .I2(\FSM_onehot_state_curr_reg_n_0_[27] ),
        .O(we_alu_OBUF_inst_i_2_n_0));
  OBUF we_dmem_OBUF_inst
       (.I(we_store_OBUF),
        .O(we_dmem));
  LUT3 #(
    .INIT(8'hFE)) 
    we_dmem_OBUF_inst_i_1
       (.I0(mux_store_OBUF[1]),
        .I1(\FSM_onehot_state_curr_reg_n_0_[18] ),
        .I2(mux_store_OBUF[0]),
        .O(we_store_OBUF));
  OBUF we_pc_OBUF_inst
       (.I(we_pc_OBUF),
        .O(we_pc));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    we_pc_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_curr_reg_n_0_[15] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[30] ),
        .I2(we_store_OBUF),
        .I3(\FSM_onehot_state_curr_reg_n_0_[24] ),
        .I4(mux_jalr_OBUF),
        .I5(\FSM_onehot_state_curr_reg_n_0_[23] ),
        .O(we_pc_OBUF));
  OBUF we_result_OBUF_inst
       (.I(we_result_OBUF),
        .O(we_result));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    we_result_OBUF_inst_i_1
       (.I0(we_pc_OBUF),
        .I1(\FSM_onehot_state_curr_reg_n_0_[11] ),
        .I2(mux_load_OBUF[2]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[12] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[13] ),
        .I5(\FSM_onehot_state_curr_reg_n_0_[10] ),
        .O(we_result_OBUF));
  OBUF we_rf_OBUF_inst
       (.I(we_rf_OBUF),
        .O(we_rf));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    we_rf_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_curr_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_curr_reg_n_0_[6] ),
        .I2(mux_wb_OBUF[2]),
        .I3(\FSM_onehot_state_curr_reg_n_0_[15] ),
        .I4(\FSM_onehot_state_curr_reg_n_0_[30] ),
        .I5(mux_jalr_OBUF),
        .O(we_rf_OBUF));
  OBUF we_store_OBUF_inst
       (.I(we_store_OBUF),
        .O(we_store));
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
