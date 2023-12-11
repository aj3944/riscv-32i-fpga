`timescale 1ns / 1ps

module addr_controller(
input [31:0] alu_result,
output addr_valid,
output addr_reserved,
output addr_ro
    );
    
    assign addr_valid = ~(|alu_result[30:16] | ~alu_result[31]);
    assign addr_reserved = ~(|alu_result[31:25] | |alu_result[23:5] | ~alu_result[24]);
    assign addr_ro = ~((~alu_result[31] | |alu_result[30:4]) & 
    (|alu_result[31:25] | ~alu_result[24] | |alu_result[23:4]));
    
endmodule
