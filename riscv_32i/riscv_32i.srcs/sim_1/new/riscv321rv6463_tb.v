`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 08:51:42 PM
// Design Name: 
// Module Name: riscv321rv6463_tb
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


module riscv321rv6463_tb();

    reg t_rst,t_en,t_clk;
    wire [31:0] t_led_out;
    

    ahd_6463_risc_v my_processor(
    .rst(t_rst),
    .en(t_en),
    .clk(t_clk),
    .led_out(t_led_out)
    );
    
    always begin
        #50 t_clk = ~t_clk;
    end
    
    initial begin
       t_clk <= 0;
       t_rst <= 1;
       t_en <= 1;
       #100;
       t_rst <= 0;
       #6000
       $display("RISC-V RV32I AHD-6463 WORKING NICELY");
       $finish;
    end
    
    
    

endmodule
