`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 04:09:32 PM
// Design Name: 
// Module Name: alu_base
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_base(
    input wire en,clk,
    input wire [3:0] control,
    input wire [31:0] in_buf_1,
    input wire [31:0] in_buf_2,
    output wire [31:0] out_buf_1
    );
        
    assign out_buf_1 = ( control == 4'b0000) ?  in_buf_1 + in_buf_2:
            ( control == 4'b0001) ? in_buf_1 << in_buf_2:
            ( control == 4'b0010) ?  $signed(in_buf_1)   <   $signed(in_buf_2) ?  1 : 0:
            ( control == 4'b0011) ?  $unsigned(in_buf_1) < $unsigned(in_buf_2) ?  1 : 0: 
            ( control == 4'b0100) ?  in_buf_1 ^ in_buf_2:
            ( control == 4'b0101) ?  in_buf_1 >> in_buf_2:
            ( control == 4'b0110) ?  in_buf_1 | in_buf_2:
            ( control == 4'b0111) ?  in_buf_1 & in_buf_2:
            ( control == 4'b1000) ?  in_buf_1 - in_buf_2:
            $signed(in_buf_1) >> in_buf_2;
endmodule
                  