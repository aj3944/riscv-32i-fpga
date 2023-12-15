`timescale 1ns / 1ps

module tb_RV32I(
    );
    
    reg clk_in, rst;
    reg [15:0] switches;
    wire [15:0] leds_out;
    
    RV32I dut(.clk_in(clk_in), .rst(rst), .switches(switches), .leds_out(leds_out));
    
    localparam T = 10;
    
    always
    begin
        clk_in <= 1'b0;
        #(T/2);
        clk_in <= 1'b1;
        #(T/2);
    end
    
    initial
    begin
        #10000 $finish;
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
