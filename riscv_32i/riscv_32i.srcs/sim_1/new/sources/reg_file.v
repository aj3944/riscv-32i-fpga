`timescale 1ns / 1ps
module reg_file (
    input wire clk, rst, we,
    input wire [4:0] read_reg_1,
    input wire [4:0] read_reg_2,
    input wire [4:0] write_reg,
    input wire [31:0] write_data,
    output wire [31:0] reg_data_1,
    output wire [31:0] reg_data_2
);

    reg [31:0] REGISTER_FILE [0:31];
    integer i ;
    
    always @(posedge clk) begin
        if(rst)
        begin
            for (i = 0; i < 32; i = i + 1) begin
                REGISTER_FILE[i] <= 31'h00000000;
            end
        end 
        else
        begin 
            if(we)
            begin
                REGISTER_FILE[write_reg] <= write_data; 
            end
        end        
    end
    
    assign reg_data_1 = REGISTER_FILE[read_reg_1];
    assign reg_data_2 = REGISTER_FILE[read_reg_2];


endmodule