`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 09:57:31 PM
// Design Name: 
// Module Name: tb_reg_file
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


module tb_reg_file(
    );
    reg CLK,EN,RST;
    reg [4:0] A1,A2,A3;
    wire [31:0] S1,S2;    
    reg [31:0] D1;    
    
    register_file uut_regfile(.en(EN),.clk(CLK),.rst(RST),.addr_1(A1),.addr_2(A2),.addr_3(A3),.out_buf_1(S1),.out_buf_2(S2),.inp_buf_3(D1));
    
    always
    begin
        CLK <= 1'b0;
        #5;
        CLK <= 1'b1;
        #5;
    end
        
    initial begin 
        
        EN <= 1'b1;
        #50
        RST <= 1'b1;
        #50
        RST <= 1'b0;
        
        A1 <= 5'b00000;
        A2 <= 5'b00001;
       
        #100
        
        D1 <= 32'hdeadbeef;
        A3 <= 5'b00010;
        
        #200
        A2 <= 5'b00001;
        #50
        RST <= 1'b1;
        #50
        A1 <= 5'b11111;
        A2 <= 5'b00001;
        D1 <= 32'hfeefdeed;
        #40
        A3 <= 5'b00011;
        #50
        A3 <= 5'b00011;
        #40
        A3 <= 5'b00011;
        RST <= 1'b0;
        #30
        A3 <= 5'b00011;
        #20
        A3 <= 5'b00011;
        #10
        A3 <= 5'b00011;
        
    $display("All tests passed");
    $finish;
    end          
endmodule
