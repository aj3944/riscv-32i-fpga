`timescale 1ns / 1ps

module tb_alu(
    );
    
    localparam T = 10;
    
    reg [31:0] in_1;
    reg [31:0] in_2;
    reg clk;
    wire [31:0] out;
    reg [3:0] control;
    
    alu dut(.control(control), .in_1(in_1), .in_2(in_2), .out(out), .clk(clk));
    
    always
    begin
    clk = 1'b0;
    #(T/2);
    clk = 1'b1;
    #(T/2);
    end
    
    initial begin 
    #100;
    control <= 4'b0000;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00001112) begin $error("ADD failed"); end
    
    control <= 4'b0001;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00002222) begin $error("SLL failed"); end


    control <= 4'b0010;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000000) begin $error("SLT Test 1 failed"); end
    
    
    in_1 <= 32'hF0000000;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000001) begin $error("SLT Test 2 failed"); end


    control <= 4'b0011;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000000) begin $error("SLTU Test 1 failed"); end
    
    
    in_1 <= 32'hF0000000;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000000) begin $error("SLTU Test 2 failed"); end


    control <= 4'b0100;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00001111;
    #T;
    if(out != 32'h00000000) begin $error("XOR failed"); end


    control <= 4'b0101;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000888) begin $error("SRL failed"); end


    control <= 4'b0110;
    in_1 <= 32'h00001111;
    in_2 <= 32'h11110000;
    #T;
    if(out != 32'h11111111) begin $error("OR failed"); end


    control <= 4'b0111;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00001100;
    #T;
    if(out != 32'h00001100) begin $error("AND failed"); end


    control <= 4'b1000;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00001110) begin $error("SUB failed"); end


    control <= 4'b1101;
    in_1 <= 32'h00001111;
    in_2 <= 32'h00000001;
    #T;
    if(out != 32'h00000888) begin $error("SRA Test 1 failed"); end
    
    in_1 <= 32'hF0000000;
    in_2 <= 32'h00000004;
    #T;
    if(out != 32'hFF000000) begin $error("SRA Test 2 failed"); end
    
    
    $display("All tests passed");
    $finish;
    end         
    
    
endmodule