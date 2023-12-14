`timescale 1ns / 1ps

//Note 1: The current memory module is in 'no change' mode where the
//output does not change when we = 1.

//Note 2: The module already has a register at the output, so DO NOT 
//add an intermediate register immediately after. This was done to 
//optimize synthesis according to AMD's documentation guide.

module data_mem #(parameter ADDR_WIDTH = 14, DATA_WIDTH = 32)(
input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] dataIn,
input clk,
input we,
input re,
output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] memory [0: (2**ADDR_WIDTH)-1];

initial
begin
    $readmemh("data.mem", memory);
end

//Current State Logic
always@(posedge clk)
begin
    if(we)
    begin
        memory[addr] <= dataIn;
    end
    if(re)
        dout <= memory[addr];
    end

endmodule