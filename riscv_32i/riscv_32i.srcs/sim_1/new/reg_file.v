`timescale 1ns / 1ps
module register_file (
    input wire clk,rst,en,
    input wire [4:0] addr_1,
    input wire [4:0] addr_2,
    input wire [4:0] addr_3,
    output reg [31:0] out_buf_1,
    output reg [31:0] out_buf_2,
    input wire [31:0] inp_buf_3
);

    reg [31:0] REGISTER_FILE [ 0 : 31 ];
    integer i ;
    integer addr1 ;
    integer addr2 ;
    integer addr3 ;
    
    
    initial begin
    end
    always @(posedge clk or posedge rst ) begin
        if (rst) begin
            for ( i = 0; i < 32; i = i + 1) begin
                REGISTER_FILE[i] <= 31'h00000000;
            end
        end else begin 
            addr1 = addr_1;
            addr2 = addr_2;
            addr3 = addr_3;
           
            out_buf_1 <= REGISTER_FILE[addr1];
            out_buf_2 <= REGISTER_FILE[addr2];
            
            if (addr3) begin
                REGISTER_FILE[addr3] <= inp_buf_3; 
            end
//            _buf_ 3 <= REGISTER_FILE[addr1];
        end        
    end


endmodule