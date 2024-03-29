`timescale 1ns / 1ps

module tb_mem_data(
    );
    
    parameter ADDR_WIDTH = 13;
    parameter DATA_WIDTH = 32;
    
    reg clk, we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] dataIn;
    wire [DATA_WIDTH-1:0] dout;
    
    mem_data #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) dut (.clk(clk), .we(we), 
    .addr(addr), .dataIn(dataIn), .dout(dout));
    
    always
    begin
        clk <= 1'b0;
        #5;
        clk <= 1'b1;
        #5;
    end
    
    initial
    begin
        #120 $finish;
    end
    
    initial
    begin
        #10;
        we = 1'b1;
        addr = 13'h0000;
        dataIn = 32'h12345678;
        
        #10;
        addr = 13'h0001;
        dataIn = 32'h87654321;
        #10;
        addr = 13'h0002;
        dataIn = 32'h01010101;
        #10;
        we = 1'b0;
        addr = 13'h0000;
        #10;
        if(dout != 32'h12345678) begin $error("Testbench failed"); end        
        addr = 13'h0001;
        #10;
        if(dout != 32'h87654321) begin $error("Testbench failed"); end        
        addr = 13'h0002;
        #10;
        if(dout != 32'h01010101) begin $error("Testbench failed"); end        
        we = 1'b1;
        dataIn = 32'hFFFFFFFF;
        #10;
        dataIn = 32'hDDDDDDDD;
        #10;
        we = 1'b0;
        #10;
        $display("All tests passed");        
        $finish;
    end
    
endmodule
