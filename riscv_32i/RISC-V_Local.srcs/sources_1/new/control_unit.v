`timescale 1ns / 1ps

module control_unit(
input clk,
input rst,
input [6:0] opcode,
input [2:0] funct3,
input funct7,
input alu_sub_bit,
input alu_slt_bit,
input alu_sltu_bit,
input addr_valid,
input addr_reserved,
input addr_ro,
output reg [2:0] mux_immSel,
output reg mux_alu,
output reg we_alu,
output reg [3:0] aluop,
output reg we_result,
output reg we_dmem,
output reg we_pc,
output reg we_store,
output reg [1:0] mux_store,
output reg [2:0] mux_load,
output reg [2:0] mux_wb,
output reg we_rf,
output reg mux_pc,
output reg mux_branch
    );
    
    //assume a max of 32 states
    localparam STATE_IF_INIT = 5'h00;
    
    localparam STATE_ID_RTYPE = 5'h01;
    localparam STATE_ID_ITYPE = 5'h02;
    localparam STATE_ID_BTYPE = 5'h03;
    localparam STATE_ID_STYPE = 5'h04;
    localparam STATE_ID_JTYPE = 5'h05;
    localparam STATE_ID_LUI = 5'h06;
    localparam STATE_ID_AUIPC = 5'h07;
    
    localparam STATE_EX_ADD = 5'h08;
    localparam STATE_EX_SUB = 5'h09;
    localparam STATE_EX_SLL = 5'h0A;
    localparam STATE_EX_SLT = 5'h0B;
    localparam STATE_EX_SLTU = 5'h0C;
    localparam STATE_EX_XOR = 5'h0D;
    localparam STATE_EX_SRL = 5'h0E;
    localparam STATE_EX_SRA = 5'h0F;
    localparam STATE_EX_OR = 5'h10;
    localparam STATE_EX_AND = 5'h11;
    
    localparam STATE_MEM_LOAD = 5'h12;
    localparam STATE_MEM_SB = 5'h13;
    localparam STATE_MEM_SH = 5'h14;
    localparam STATE_MEM_SW = 5'h15;
    
    localparam STATE_MEM_WB_NOP = 5'h1F;
    
    localparam STATE_WB_GEN = 5'h16;
    localparam STATE_WB_LB = 5'h17;
    localparam STATE_WB_LH = 5'h18;
    localparam STATE_WB_LW = 5'h19;
    localparam STATE_WB_LBU = 5'h1A;
    localparam STATE_WB_LHU = 5'h1B;
    localparam STATE_WB_JALR = 5'h1C;
    localparam STATE_WB_BNT = 5'h1D;
    localparam STATE_WB_BT = 5'h1E;
    
    reg [4:0] state_curr, state_next;
    wire branch_taken;
    wire alu_slt_bit_combo;
    assign alu_slt_bit_combo = funct3[1] ? alu_sltu_bit : alu_slt_bit;
    assign branch_taken = funct3[2] ? (funct3[0] ? ~alu_slt_bit_combo : alu_slt_bit_combo) : 
    (funct3[0] ? ~alu_sub_bit : alu_sub_bit);
    
    //Current state logic
    always@(negedge clk)
    begin
        if(rst)
            state_curr <= STATE_IF_INIT;
        else
            state_curr <= state_next;
    end
    
    //Next state logic
    always@(*)
    begin
        state_next = state_curr;
        case(state_curr)
            STATE_IF_INIT:
            begin
//                if(opcode == 7'b0110011)
//                    state_next = STATE_ID_RTYPE;
//                else if(opcode == 7'b0100011)
//                    state_next = STATE_ID_STYPE;
//                else if(opcode == 7'b1101111)
//                    state_next = STATE_ID_JTYPE;
//                else if(opcode == 7'b1100011)
//                    state_next = STATE_ID_BTYPE;
//                else if(opcode == 7'b0110111)
//                    state_next = STATE_ID_LUI;
//                else if(opcode == 7'b0010111)
//                    state_next = STATE_ID_AUIPC;
//                else if(opcode == 7'b1110011)
//                    state_next = STATE_IF_INIT;
//                else
//                    state_next = STATE_ID_ITYPE;
                case(opcode)
                7'b0110011:
                    state_next = STATE_ID_RTYPE;
                7'b0100011:
                    state_next = STATE_ID_STYPE;
                7'b1101111:
                    state_next = STATE_ID_JTYPE;
                7'b1100011:
                    state_next = STATE_ID_BTYPE;
                7'b0110111:
                    state_next = STATE_ID_LUI;
                7'b0010111:
                    state_next = STATE_ID_AUIPC;
                7'b1110011:
                    state_next = STATE_IF_INIT;
                default:
                    state_next = STATE_ID_ITYPE;
                endcase
            end
            
            STATE_ID_RTYPE:
            begin
                if(funct3 == 3'b000)
                begin
                    if(funct7 == 1'b0)
                        state_next = STATE_EX_ADD;
                    else
                        state_next = STATE_EX_SUB;
                end
                else if(funct3 == 3'b001)
                begin
                    state_next = STATE_EX_SLL;
                end
                else if(funct3 == 3'b010)
                begin
                    state_next = STATE_EX_SLT;
                end
                else if(funct3 == 3'b011)
                begin
                    state_next = STATE_EX_SLTU;
                end
                else if(funct3 == 3'b100)
                begin
                    state_next = STATE_EX_XOR;
                end
                else if(funct3 == 3'b101)
                begin
                    if(funct7 == 1'b0)
                        state_next = STATE_EX_SRL;
                    else
                        state_next = STATE_EX_SRA;
                end
                else if(funct3 == 3'b110)
                begin
                    state_next = STATE_EX_OR;
                end
                else
                begin
                    state_next = STATE_EX_AND;
                end
            end
            
            STATE_ID_ITYPE:
            begin
                if(opcode == 7'b0000011) //LOAD instructions
                    state_next = STATE_EX_ADD;
                else if(opcode == 7'b0001111) //FENCE instruction
                    state_next = STATE_EX_ADD;
                else if(funct3 == 3'b000)
                    state_next = STATE_EX_ADD;
                else if(funct3 == 3'b001)
                    state_next = STATE_EX_SLL;
                else if(funct3 == 3'b010)
                    state_next = STATE_EX_SLT;
                else if(funct3 == 3'b011)
                    state_next = STATE_EX_SLTU;
                else if(funct3 == 3'b100)
                    state_next = STATE_EX_XOR;
                else if(funct3 == 3'b101)
                begin
                    if(funct7 == 1'b0)
                        state_next = STATE_EX_SRL;
                    else
                        state_next = STATE_EX_SRA;
                end
                else if(funct3 == 3'b110)
                    state_next = STATE_EX_OR;
                else
                    state_next = STATE_EX_AND;
            end
            
            STATE_ID_STYPE:
            begin
                state_next = STATE_EX_ADD;
            end
            
            STATE_ID_BTYPE:
            begin
                if(funct3 == 3'b000)
                    state_next = STATE_EX_SUB;
                else if(funct3 == 3'b001)
                    state_next = STATE_EX_SUB;
                else if(funct3 == 3'b100)
                    state_next = STATE_EX_SLT;
                else if(funct3 == 3'b101)
                    state_next = STATE_EX_SLT;
                else if(funct3 == 3'b110)
                    state_next = STATE_EX_SLTU;
                else
                    state_next = STATE_EX_SLTU;
            end
            
            STATE_ID_JTYPE:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_ID_LUI:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_ID_AUIPC:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_EX_ADD:
            begin
//                if(opcode == 7'b0000011)
//                    state_next = STATE_MEM_LOAD;
//                else if(opcode == 7'b0100011)
//                begin
////                    if(addr_ro | ~(addr_valid | addr_reserved))
////                        state_next = STATE_MEM_WB_NOP;
//                    if(funct3 == 3'b000)
//                        state_next = STATE_MEM_SB;
//                    else if(funct3 == 3'b001)
//                        state_next = STATE_MEM_SH;
//                    else
//                        state_next = STATE_MEM_SW;
//                end
//                else if(opcode == 7'b0001111)
//                    state_next = STATE_MEM_WB_NOP; //FENCE
//                else if(opcode == 7'b1100111)
//                    state_next = STATE_WB_JALR;
//                else
//                    state_next = STATE_WB_GEN;
                case(opcode)
                    7'b0000011:
                        state_next = STATE_MEM_LOAD;
                    7'b0100011:
                        case(funct3)
                            3'b000:
                                state_next = STATE_MEM_SB;
                            3'b001:
                                state_next = STATE_MEM_SH;
                            3'b010:
                                state_next = STATE_MEM_SW;
                            default:
                                state_next = STATE_MEM_SW;
                        endcase
                    7'b0001111:
                        state_next = STATE_MEM_WB_NOP;
                    7'b1100111:
                        state_next = STATE_WB_JALR;
                    default:
                        state_next = STATE_WB_GEN;
                endcase
            end
            
            STATE_EX_SUB:
            begin
//                if(opcode == 7'b1100011)
//                begin
//                    if(branch_taken)
//                        state_next = STATE_WB_BT;
//                    else
//                        state_next = STATE_WB_BNT;
//                end
//                else
//                    state_next = STATE_WB_GEN;
                case(opcode)
                    7'b1100011:
                        case(branch_taken)
                            1'b1:
                                state_next = STATE_WB_BT;
                            1'b0:
                                state_next = STATE_WB_BNT;
                        endcase
                    default:
                        state_next = STATE_WB_GEN;
                endcase
            end
            
            STATE_EX_SLL:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SLT:
            begin
//                if(opcode == 7'b1100011)
//                begin
//                    if(branch_taken)
//                        state_next = STATE_WB_BT;
//                    else
//                        state_next = STATE_WB_BNT;
//                end
//                else
//                    state_next = STATE_WB_GEN;
                case(opcode)
                    7'b1100011:
                        case(branch_taken)
                            1'b1:
                                state_next = STATE_WB_BT;
                            1'b0:
                                state_next = STATE_WB_BNT;
                        endcase
                    default:
                        state_next = STATE_WB_GEN;
                endcase
            end
            
            STATE_EX_SLTU:
            begin
//                if(opcode == 7'b1100011)
//                begin
//                    if(branch_taken)
//                        state_next = STATE_WB_BT;
//                    else
//                        state_next = STATE_WB_BNT;
//                end
//                else
//                    state_next = STATE_WB_GEN;
                case(opcode)
                    7'b1100011:
                        case(branch_taken)
                            1'b1:
                                state_next = STATE_WB_BT;
                            1'b0:
                                state_next = STATE_WB_BNT;
                        endcase
                    default:
                        state_next = STATE_WB_GEN;
                endcase
            end
            
            STATE_EX_XOR:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SRL:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SRA:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_OR:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_AND:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_MEM_LOAD:
            begin
//              if(~(addr_valid | addr_reserved))
//                  state_next = STATE_MEM_WB_NOP;
//                if(funct3 == 3'b000)
//                    state_next = STATE_WB_LB;
//                else if(funct3 == 3'b001)
//                    state_next = STATE_WB_LH;
//                else if(funct3 == 3'b010)
//                    state_next = STATE_WB_LW;
//                else if(funct3 == 3'b100)
//                    state_next = STATE_WB_LBU;
//                else
//                    state_next = STATE_WB_LHU;
                case(funct3)
                    3'b000:
                        state_next = STATE_WB_LB;
                    3'b001:
                        state_next = STATE_WB_LH;
                    3'b010:
                        state_next = STATE_WB_LW;
                    3'b100:
                        state_next = STATE_WB_LBU;
                    3'b101:
                        state_next = STATE_WB_LHU;
                    default:
                        state_next = STATE_WB_LW;
                endcase
            end
            
            STATE_MEM_SB:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_MEM_SH:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_MEM_SW:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_MEM_WB_NOP:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_GEN:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LB:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LH:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LW:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LBU:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LHU:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_JALR:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_BT:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_BNT:
            begin
                state_next = STATE_IF_INIT;
            end
            
            default: state_next = state_curr;
            
        endcase
    end
    
    //Output Logic
    always@(*)
    begin
        mux_immSel = 3'b000;
        mux_alu = 1'b0;
        we_alu = 1'b0;
        aluop = 4'b0000;
        we_result = 1'b0;
        we_dmem = 1'b0;
        we_pc = 1'b0;
        we_store = 1'b0;
        mux_store = 2'b00;
        mux_load = 3'b010;
        mux_wb = 3'b000;
        we_rf = 1'b0;
        mux_pc = 1'b0;
        mux_branch = 1'b0;
        case(state_curr)
            STATE_IF_INIT:
            begin
            end
            STATE_ID_RTYPE:
            begin
                mux_alu = 1'b0;
                we_alu = 1'b1;
            end
            STATE_ID_ITYPE:
            begin
                mux_alu = 1'b1;
                mux_immSel = 3'b000;
                we_alu = 1'b1;
            end
            STATE_ID_BTYPE:
            begin
                mux_alu = 1'b0;
                we_alu = 1'b1;
            end
            STATE_ID_STYPE:
            begin
                mux_immSel = 3'b010;
                mux_alu = 1'b1;
                we_alu = 1'b1;
            end
            STATE_ID_JTYPE:
            begin
                mux_immSel = 3'b011;
                mux_branch = 1'b1;
                we_pc = 1'b1;
                mux_wb = 3'b010;
                we_rf = 1'b1;
            end
            STATE_ID_LUI:
            begin
                mux_immSel = 3'b100;
                mux_wb = 3'b011;
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
            end
            STATE_ID_AUIPC:
            begin
                mux_immSel = 3'b100;
                mux_wb = 3'b100;
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
            end
            STATE_EX_ADD:
            begin
                aluop = 4'b0000;
                we_result = 1'b1;
                we_store = 1'b1;
            end
            STATE_EX_SUB:
            begin
                aluop = 4'b1000;
                we_result = 1'b1;
            end
            STATE_EX_SLL:
            begin
                aluop = 4'b0001;
                we_result = 1'b1;
            end
            STATE_EX_SLT:
            begin
                aluop = 4'b0010;
                we_result = 1'b1;
            end
            STATE_EX_SLTU:
            begin
                aluop = 4'b0011;
                we_result = 1'b1;
            end
            STATE_EX_XOR:
            begin
                aluop = 4'b0100;
                we_result = 1'b1;
            end
            STATE_EX_SRL:
            begin
                aluop = 4'b0101;
                we_result = 1'b1;
            end
            STATE_EX_SRA:
            begin
                aluop = 4'b1101;
                we_result = 1'b1;
            end
            STATE_EX_OR:
            begin
                aluop = 4'b0110;
                we_result = 1'b1;
            end
            STATE_EX_AND:
            begin
                aluop = 4'b0111;
                we_result = 1'b1;
            end
            STATE_MEM_LOAD:
            begin
            end
            STATE_MEM_SB:
            begin
                we_dmem = 1'b1;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_store = 2'b01;
            end
            STATE_MEM_SH:
            begin
                we_dmem = 1'b1;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_store = 2'b10;
            end
            STATE_MEM_SW:
            begin
                we_dmem = 1'b1;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_store = 2'b00;
            end
            STATE_MEM_WB_NOP:
            begin
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
            end
            STATE_WB_GEN:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb = 3'b000;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
            end
            STATE_WB_LB:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_load = 3'b000;
            end
            STATE_WB_LH:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_load = 3'b001;
            end
            STATE_WB_LW:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_load = 3'b010;
            end
            STATE_WB_LBU:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_load = 3'b011;
            end
            STATE_WB_LHU:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
                mux_load = 3'b100;
            end
            STATE_WB_JALR:
            begin
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb = 3'b010;
                mux_pc = 1'b1;
            end
            STATE_WB_BNT:
            begin
                we_rf = 1'b0;
                we_pc = 1'b1;
                mux_pc = 1'b0;
                mux_branch = 1'b0;
            end
            STATE_WB_BT:
            begin
                we_rf = 1'b0;
                we_pc = 1'b1;
                mux_branch = 1'b1;
                mux_pc = 1'b0;
                mux_immSel = 3'b001;
            end
        endcase
    end
    
endmodule