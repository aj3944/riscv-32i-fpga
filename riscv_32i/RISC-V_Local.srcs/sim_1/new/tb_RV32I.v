`timescale 1ns / 1ps

module tb_RV32I(
    );
    
    reg clk, rst;
    wire [4:0] computer_state;
    wire [31:0] data_memory, r7_out, r8_out;
    
    RV32I dut(.clk(clk), .rst(rst), .data_memory(data_memory), .computer_state(computer_state), 
    .r7_out(r7_out), .r8_out(r8_out));
    
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
        #500 $finish;
    end
    
    initial
    begin
        rst = 1'b1;
        #50;
        rst = 1'b0;
        #T;
        //addi $7, $0, 7
        //addi $1, $0, 3
        //add $8, $1, $7
        //
    end
    
endmodule
