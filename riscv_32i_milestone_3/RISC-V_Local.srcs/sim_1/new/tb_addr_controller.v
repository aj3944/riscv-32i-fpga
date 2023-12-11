`timescale 1ns / 1ps

module tb_addr_controller(
    );
    
    reg [31:0] alu_result;
    wire addr_valid;
    wire addr_reserved;
    wire addr_ro;
    
    addr_controller dut(.alu_result(alu_result), .addr_valid(addr_valid), 
    .addr_reserved(addr_reserved), .addr_ro(addr_ro));
    
    localparam T = 10;
    
    initial
    begin
        #100 $finish;
    end
    
    initial
    begin
        alu_result = 32'h00000000;
        #T;
        alu_result = 32'h80001000;
        #T;
        alu_result = 32'h80000010;
        #T;
        alu_result = 32'h80000000;
        #T;
        alu_result = 32'h81000000;
        #T;
        alu_result = 32'h01001000;
        #T;
        alu_result = 32'h01000010;
        #T;
        alu_result = 32'h01000000;
        #T;
    end
    
endmodule
