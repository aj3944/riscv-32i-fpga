`timescale 1ns / 1ps
module reg_file (
    input wire clk, rst, we,
    input wire [4:0] read_reg_1,
    input wire [4:0] read_reg_2,
    input wire [4:0] write_reg,
    input wire [31:0] write_data,
    output wire [31:0] reg_data_1,
    output wire [31:0] reg_data_2,
    output wire [31:0] r7_out,
    output wire [31:0] r8_out
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
                if(write_reg != 5'b0)
                    REGISTER_FILE[write_reg] <= write_data; 
            end
        end        
    end
    
    assign reg_data_1 = REGISTER_FILE[read_reg_1];
    assign reg_data_2 = REGISTER_FILE[read_reg_2];
    assign r7_out = REGISTER_FILE[5'b00111];
    assign r8_out = REGISTER_FILE[5'b01000];


endmodule