`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 05:24:08 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(
    );
    
    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] C;
    reg [3:0] CONTROL;
    reg EN;
    
    alu_base uut_alu(.en(EN),.control(CONTROL),.in_buf_1(A),.in_buf_2(B),.out_buf_1(C));
    
    initial begin 
    EN <= 1'b1;
    CONTROL <= 4'b0000;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00001112) begin $error("Testbench failed"); end
    
    CONTROL <= 4'b0001;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00002222) begin $error("Testbench failed"); end


    CONTROL <= 4'b0010;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h0000000) begin $error("Testbench failed"); end


    CONTROL <= 4'b0011;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00000000) begin $error("Testbench failed"); end


    CONTROL <= 4'b0100;
    A <= 32'h00001111;
    B <= 32'h00001111;
    #100
    if(C != 32'h00000000) begin $error("Testbench failed"); end


    CONTROL <= 4'b0101;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00000888) begin $error("Testbench failed"); end


    CONTROL <= 4'b0110;
    A <= 32'h00001111;
    B <= 32'h11110000;
    #100
    if(C != 32'h11111111) begin $error("Testbench failed"); end


    CONTROL <= 4'b0111;
    A <= 32'h00001111;
    B <= 32'h00001100;
    #100
    if(C != 32'h00001100) begin $error("Testbench failed"); end


    CONTROL <= 4'b1000;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00001110) begin $error("Testbench failed"); end

    CONTROL <= 4'b1001;
    A <= 32'h00001111;
    B <= 32'h00000001;
    #100
    if(C != 32'h00000888) begin $error("Testbench failed"); end
    
    
    
    $error("All tests passed");
    $finish;
    end         
    
    
endmodule
