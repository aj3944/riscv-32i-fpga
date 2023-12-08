`timescale 1ns / 1ps

module imm_gen (
    input [31:0] instruction,
    input [2:0] immSel,
    output [31:0] imm
);

reg [31:0] res;

localparam U_type = 3'b000;
localparam J_type = 3'b001;
localparam B_type = 3'b010;
localparam I_type_notSE = 3'b011;
localparam I_type_SE = 3'b100;
localparam S_type = 3'b101;

initial begin
    res = 0;
end

always @ * begin
    case(immSel)
        U_type: //not signed extended
            res = {instruction[31:12], 12'b0};
        J_type: //signed extended
            if(instruction[31] == 1'b1) begin
                res = {12'b111111111111, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
            end else begin
                res = {12'b0, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};
            end
        B_type: // signed extended
            if(instruction[31] == 1'b1) begin
                res = {19'b1111111111111111111, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            end else begin
                res = {19'b0, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
            end
        I_type_notSE: //maybe signed extended
            res = {20'b0, instruction[31:20]};
        I_type_SE: //signed extended
            if(instruction[31] == 1'b1) begin
                res = {20'b11111111111111111111, instruction[31:20]};
            end else begin
                res = {20'b0, instruction[31:20]};
            end
        S_type: //signed extended
            if(instruction[31] == 1'b1) begin
                res = {20'b11111111111111111111, instruction[31:25], instruction[11:7]};
            end else begin
                res = {20'b0, instruction[31:25], instruction[11:7]};
            end
    endcase
end

assign imm = res;
    
endmodule