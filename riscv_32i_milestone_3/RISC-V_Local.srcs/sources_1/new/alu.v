`timescale 1ns / 1ps

module alu(
    input wire [3:0] control,
    input wire [31:0] in_1,
    input wire [31:0] in_2,
    output wire [31:0] out
    );
        
wire [31:0] add_out, sll_out, xor_out, srl_out, sra_out, sr_out, or_out, and_out;
wire slt_out;
assign add_out = control[3] ? (in_1 - in_2) : (in_1 + in_2);
assign sll_out = in_1 << in_2[4:0];
assign slt_out = control[0] ? ((in_1 < in_2) ? 32'b1 : 32'b0) : 
(({~in_1[31], in_1[30:0]} < {~in_2[31], in_2[30:0]}) ? 32'b1 : 32'b0);
assign xor_out = in_1 ^ in_2;
assign srl_out = in_1 >> in_2[4:0];
assign sra_out = (32'hFFFFFFFF << (5'b11111 - in_2[4:0])) | srl_out;
assign sr_out = (control[3] & in_1[31])? sra_out : srl_out;
assign or_out = in_1 | in_2;
assign and_out = in_1 & in_2;
assign out = control[2] ? (control[1] ? (control[0] ? (and_out) : (or_out)) : (control[0] ? (sr_out) : (xor_out))) : 
(control[1] ? {31'b0, slt_out} : (control[0] ? (sll_out) : (add_out)));

endmodule