`timescale 1ns / 1ps

module mem_data #(parameter ADDR_WIDTH = 13, DATA_WIDTH = 32)(
input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] dataIn,
input clk,
input [1:0] we,
output [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] memory_cell [0:2**(ADDR_WIDTH - 2)];

//Current State Logic
always@(posedge clk)
begin
    case(we)
        2'b11: memory_cell[addr >> 2][31:0] <= dataIn;
        2'b10: memory_cell[addr >> 2][15:0] <= dataIn[15:0];
        2'b01: memory_cell[addr >> 2][7:0] <= dataIn[7:0];
        default: ;
    endcase
end

//Output Logic
assign dout = memory_cell[addr >> 2];

endmodule