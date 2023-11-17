`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NYU TANDON
// Engineers: BRAVO JAIN MARKOWSKI
// 
// Create Date: 10/31/2023 08:51:42 PM
// Design Name: RISC V Testbench for FPGA RISC-V REV32I 
// Module Name: riscv321rv6463_tb
// Project Name: BAYRISC
// Target Devices: BAYSYS 3
// Tool Versions: 
// Description: Adv. Hardware Design by Prof. Karri
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 Milestone 2
// Additional Comments: TODO: 
//
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
       #10_000_000
       $display("RISC-V RV32I AHD-6463 WORKING NICELY");
       $finish;
    end
    
    
    

endmodule
