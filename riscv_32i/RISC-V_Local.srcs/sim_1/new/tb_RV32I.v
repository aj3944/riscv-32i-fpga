`timescale 1ns / 1ps

module tb_RV32I(
    );
    
    reg clk, rst;
    reg [15:0] switches;
    wire [4:0] computer_state;
    wire [15:0] leds_out;
    
    RV32I dut(.clk(clk), .rst(rst), .switches(switches), .computer_state(computer_state), .leds_out(leds_out));
    
    localparam T = 10;
    
    always
    begin
        clk <= 1'b0;
        #(T/2);
        clk <= 1'b1;
        #(T/2);
    end
    
    initial
    begin
        #1000 $finish;
    end
    
    initial
    begin
        rst = 1'b1;
        #50;
        rst = 1'b0;
        #T;
        switches = 16'h6;
        //
    end
    
endmodule
