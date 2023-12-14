`timescale 1ns / 1ps

module imm_gen (
    input [31:0] instruction,
    input [2:0] immSel,
    output [31:0] imm
);

reg [31:0] res;

localparam I_type= 3'b000;
localparam B_type = 3'b001;
localparam S_type = 3'b010;
localparam J_type = 3'b011;
localparam U_type = 3'b100;


always @(*) begin
    res = 3'b000;
    case(immSel)
        U_type: //not signed extended
            res = {instruction[31:12], 12'b0};
        J_type: //signed extended
            res = $signed({instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0});
        B_type: // signed extended
            res = $signed({instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0});
        I_type: //signed extended
            res = $signed(instruction[31:20]);
        S_type: //signed extended
            res = $signed({instruction[31:25], instruction[11:7] });
    endcase
end

assign imm = res;
    
endmodule