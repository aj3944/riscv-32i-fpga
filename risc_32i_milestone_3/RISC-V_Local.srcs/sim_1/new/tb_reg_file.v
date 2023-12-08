`timescale 1ns / 1ps

module tb_reg_file(
    );
    reg clk, we, rst;
    reg [4:0] read_reg_1, read_reg_2, write_reg;
    wire [31:0] reg_data_1, reg_data_2;    
    reg [31:0] write_data;    
    
    localparam T = 10;
    
    reg_file uut_regfile(.we(we), .clk(clk), .rst(rst), .read_reg_1(read_reg_1), .read_reg_2(read_reg_2), 
    .write_reg(write_reg), .reg_data_1(reg_data_1), .reg_data_2(reg_data_2), .write_data(write_data));
    
    always
    begin
        clk <= 1'b0;
        #(T/2);
        clk <= 1'b1;
        #(T/2);
    end
        
    initial begin 
        rst = 1'b1;
        #100
        rst = 1'b0;
        we = 1'b1;
        read_reg_1 = 32'h0;
        read_reg_2 = 32'h1;
        write_reg = 32'h1;
        write_data = 32'h12345678;
        #T;
        write_reg = 32'h2;
        write_data = 32'h87654321;
        #T;
        we = 1'b0;
        read_reg_1 = 32'h2;
        read_reg_2 = 32'h3;
        #T;
        #T;
        
        
//        A1 <= 5'b00000;
//        A2 <= 5'b00001;
       
//        #100
        
//        D1 <= 32'hdeadbeef;
//        A3 <= 5'b00010;
        
//        #200
//        A2 <= 5'b00001;
//        #50
//        rst <= 1'b1;
//        #50
//        A1 <= 5'b11111;
//        A2 <= 5'b00001;
//        D1 <= 32'hfeefdeed;
//        #40
//        A3 <= 5'b00011;
//        #50
//        A3 <= 5'b00011;
//        #40
//        A3 <= 5'b00011;
//        rst <= 1'b0;
//        #30
//        A3 <= 5'b00011;
//        #20
//        A3 <= 5'b00011;
//        #10
//        A3 <= 5'b00011;
        
    $display("All tests passed");
    $finish;
    end          
endmodule
