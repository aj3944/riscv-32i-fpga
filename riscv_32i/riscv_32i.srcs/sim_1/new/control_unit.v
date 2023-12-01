`timescale 1ns / 1ps

module control_unit(
input clk,
input rst,
input [6:0] opcode,
input [2:0] funct3,
input [6:0] funct7,
input [31:0] alu_result,
output reg [2:0] mux_se,
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
output reg mux_jalr
    );
    
    //assume a max of 32 states for now
    localparam STATE_IF_INIT = 5'h00;
    
    localparam STATE_ID_RTYPE = 5'h01;
    localparam STATE_ID_ITYPE = 5'h02;
    localparam STATE_ID_BTYPE = 5'h03;
    localparam STATE_ID_STYPE = 5'h04;
    localparam STATE_ID_JTYPE = 5'h05;
    localparam STATE_ID_LUI = 5'h06;
    localparam STATE_ID_AUIPC = 5'h1E;
    
    localparam STATE_EX_ADD = 5'h07;
    localparam STATE_EX_SUB = 5'h08;
    localparam STATE_EX_SLL = 5'h09;
    localparam STATE_EX_SLT = 5'h0A;
    localparam STATE_EX_SLTU = 5'h0B;
    localparam STATE_EX_XOR = 5'h0C;
    localparam STATE_EX_SRL = 5'h0D;
    localparam STATE_EX_SRA = 5'h0E;
    localparam STATE_EX_OR = 5'h0F;
    localparam STATE_EX_AND = 5'h10;
    
    localparam STATE_MEM_LB = 5'h11;
    localparam STATE_MEM_LH = 5'h12;
    localparam STATE_MEM_LW = 5'h13;
    localparam STATE_MEM_LBU = 5'h14;
    localparam STATE_MEM_LHU = 5'h15;
    localparam STATE_MEM_SB = 5'h16;
    localparam STATE_MEM_SH = 5'h17;
    localparam STATE_MEM_SW = 5'h18;
    
    localparam STATE_WB_GEN = 5'h19;
    localparam STATE_WB_LOAD = 5'h1A;
    localparam STATE_WB_JALR = 5'h1B;
    localparam STATE_WB_BNT = 5'h1C;
    localparam STATE_WB_BT = 5'h1D;
    
    reg [4:0] state_curr, state_next;
    wire branch_taken;
    wire alu_result_bit;
    assign alu_result_bit = alu_result[0] | alu_result[1] | alu_result[2] | alu_result[3] | alu_result[4] | 
    alu_result[5] | alu_result[6] | alu_result[7] | alu_result[8] | alu_result[9] | alu_result[10] | alu_result[11] | 
    alu_result[12] | alu_result[13] | alu_result[14] | alu_result[15] | alu_result[16] | alu_result[17] | alu_result[18] |
    alu_result[19] | alu_result[20] | alu_result[21] | alu_result[22] | alu_result[23] | alu_result[24] | alu_result[25] |
    alu_result[26] | alu_result[27] | alu_result[28] | alu_result[29] | alu_result[30] | alu_result[31];
    assign branch_taken = funct3[2] ? (funct3[0] ? ~alu_result_bit : alu_result_bit) : (funct3[0] ? alu_result_bit : ~alu_result_bit);
    
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
                if(opcode == 7'b0110011)
                    state_next = STATE_ID_RTYPE;
                else if(opcode == 7'b0100011)
                    state_next = STATE_ID_STYPE;
                else if(opcode == 7'b1101111)
                    state_next = STATE_ID_JTYPE;
                else if(opcode == 7'b1100011)
                    state_next = STATE_ID_BTYPE;
                else if(opcode == 7'b0110111)
                    state_next = STATE_ID_LUI;
                else if(opcode == 7'b0010111)
                    state_next = STATE_ID_AUIPC;
                else if(opcode == 7'b1110011)
                    state_next = STATE_IF_INIT; //halt, we might change this in the future
                else
                    state_next = STATE_ID_ITYPE;
            end
            
            STATE_ID_RTYPE:
            begin
                if(funct3 == 3'b000)
                begin
                    if(funct7[5] == 1'b0)
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
                    if(funct7[5] == 1'b0)
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
                if(opcode == 7'b0000011)
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
                    if(funct7[5] == 1'b0)
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
                if(opcode == 7'b0000011)
                //load
                begin
                    if(funct3 == 3'b000)
                        state_next = STATE_MEM_LB;
                    else if(funct3 == 3'b001)
                        state_next = STATE_MEM_LH;
                    else if(funct3 == 3'b010)
                        state_next = STATE_MEM_LW;
                    else if(funct3 == 3'b100)
                        state_next = STATE_MEM_LBU;
                    else
                        state_next = STATE_MEM_LHU;
                end
                else if(opcode == 7'b0100011)
                //store
                begin
                    if(funct3 == 3'b000)
                        state_next = STATE_MEM_SB;
                    else if(funct3 == 3'b001)
                        state_next = STATE_MEM_SH;
                    else
                        state_next = STATE_MEM_SW;
                end
                else if(opcode == 7'b1100111)
                    state_next = STATE_WB_JALR;
                else
                    state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SUB:
            begin
                if(opcode == 7'b1100011)
                begin
                    if(branch_taken)
                        state_next = STATE_WB_BT;
                    else
                        state_next = STATE_WB_BNT;
                end
                else
                    state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SLL:
            begin
                state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SLT:
            begin
                if(opcode == 7'b1100011)
                begin
                    if(branch_taken)
                        state_next = STATE_WB_BT;
                    else
                        state_next = STATE_WB_BNT;
                end
                else
                    state_next = STATE_WB_GEN;
            end
            
            STATE_EX_SLTU:
            begin
                if(opcode == 7'b1100011)
                begin
                    if(branch_taken)
                        state_next = STATE_WB_BT;
                    else
                        state_next = STATE_WB_BNT;
                end
                else
                    state_next = STATE_WB_GEN;
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
            
            STATE_MEM_LB:
            begin
                state_next = STATE_WB_LOAD;
            end
            
            STATE_MEM_LH:
            begin
                state_next = STATE_WB_LOAD;
            end
            
            STATE_MEM_LW:
            begin
                state_next = STATE_WB_LOAD;
            end
            
            STATE_MEM_LBU:
            begin
                state_next = STATE_WB_LOAD;
            end
            
            STATE_MEM_LHU:
            begin
                state_next = STATE_WB_LOAD;
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
            
            STATE_WB_GEN:
            begin
                state_next = STATE_IF_INIT;
            end
            
            STATE_WB_LOAD:
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
            
        endcase
    end
    
    //Output Logic
    always@(*)
    begin
        mux_se = 3'b000;
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
        mux_jalr = 1'b0;
        case(state_curr)
            STATE_IF_INIT:
            begin
            end
            STATE_ID_RTYPE:
            begin
                mux_alu = 1'b0;
            end
            STATE_ID_ITYPE:
            begin
                mux_alu = 1'b1;
                mux_se = 3'b000;
            end
            STATE_ID_BTYPE:
            begin
                mux_alu = 1'b1;
                mux_se = 3'b010;
            end
            STATE_ID_STYPE:
            begin
                mux_se = 3'b001;
                mux_alu = 1'b1;
            end
            STATE_ID_JTYPE:
            begin
                mux_se = 3'b000;
                mux_jalr = 1'b0;
                mux_wb = 3'b010;
                we_rf = 1'b1;
            end
            STATE_ID_LUI:
            begin
                mux_wb = 3'b011;
                we_rf = 1'b1;
            end
            STATE_ID_AUIPC:
            begin
                mux_wb = 3'b100;
                we_rf = 1'b1;
            end
            STATE_EX_ADD:
            begin
                aluop = 4'b0000;
                we_alu = 1'b1;
            end
            STATE_EX_SUB:
            begin
                aluop = 4'b1000;
                we_alu = 1'b1;
            end
            STATE_EX_SLL:
            begin
                aluop = 4'b0001;
                we_alu = 1'b1;
            end
            STATE_EX_SLT:
            begin
                aluop = 4'b0010;
                we_alu = 1'b1;
            end
            STATE_EX_SLTU:
            begin
                aluop = 4'b0011;
                we_alu = 1'b1;
            end
            STATE_EX_XOR:
            begin
                aluop = 4'b0100;
                we_alu = 1'b1;
            end
            STATE_EX_SRL:
            begin
                aluop = 4'b0101;
                we_alu = 1'b1;
            end
            STATE_EX_SRA:
            begin
                aluop = 4'b1101;
                we_alu = 1'b1;
            end
            STATE_EX_OR:
            begin
                aluop = 4'b0110;
                we_alu = 1'b1;
            end
            STATE_EX_AND:
            begin
                aluop = 4'b0111;
                we_alu = 1'b1;
            end
            STATE_MEM_LB:
            begin
                we_result = 1'b1;
                mux_load = 3'b000;
            end
            STATE_MEM_LH:
            begin
                we_result = 1'b1;
                mux_load = 3'b001;
            end
            STATE_MEM_LW:
            begin
                we_result = 1'b1;
                mux_load = 3'b010;
            end
            STATE_MEM_LBU:
            begin
                we_result = 1'b1;
                mux_load = 3'b011;
            end
            STATE_MEM_LHU:
            begin
                we_result = 1'b1;
                mux_load = 3'b100;
            end
            STATE_MEM_SB:
            begin
                we_result = 1'b1;
                we_dmem = 1'b1;
                we_pc = 1'b1;
                we_store = 1'b1; //reg in front of DMEM
                mux_store = 2'b01;
            end
            STATE_MEM_SH:
            begin
                we_result = 1'b1;
                we_dmem = 1'b1;
                we_pc = 1'b1;
                we_store = 1'b1; //reg in front of DMEM
                mux_store = 2'b10;
            end
            STATE_MEM_SW:
            begin
                we_result = 1'b1;
                we_dmem = 1'b1;
                we_pc = 1'b1;
                we_store = 1'b1; //reg in front of DMEM
                mux_store = 2'b00;
            end
            STATE_WB_GEN:
            begin
                we_result = 1'b1;
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb = 3'b000;
                mux_pc = 1'b0;
            end
            STATE_WB_LOAD:
            begin
                we_result = 1'b1;
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb =3'b001;
                mux_pc = 1'b0;
            end
            STATE_WB_JALR:
            begin
                we_result = 1'b1;
                we_rf = 1'b1;
                we_pc = 1'b1;
                mux_wb = 3'b010;
                mux_pc = 1'b1;
                mux_jalr = 1'b1;
            end
            STATE_WB_BNT:
            begin
                we_result = 1'b1;
                we_rf = 1'b0;
                we_pc = 1'b1;
                mux_pc = 1'b1;
                mux_jalr = 1'b0;
            end
            STATE_WB_BT:
            begin
                we_result = 1'b1;
                we_rf = 1'b0;
                we_pc = 1'b1;
                mux_pc = 1'b0;
            end
        endcase
    end
    
endmodule