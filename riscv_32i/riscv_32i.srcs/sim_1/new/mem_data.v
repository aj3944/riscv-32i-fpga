`timescale 1ns / 1ps

module mem_data #(parameter ADDR_WIDTH = 13, DATA_WIDTH = 32)(
input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] dataIn,
input clk,
input we,
output [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] memory_cell [0:ADDR_WIDTH-1];

//Current State Logic
always@(posedge clk)
begin
    if(we)
        memory_cell[addr] <= dataIn;
end

//Output Logic
assign dout = memory_cell[addr];

endmodule