`timescale 1ns / 1ps

module RV32I(
input clk,
input rst,
output [4:0] computer_state,
output [31:0] data_memory,
output [31:0] r7_out,
output [31:0] r8_out
    );

// Switches and LEDS
reg [15:0] leds;
reg [15:0] switches;
wire [15:0] d_mem_temp;

//Instantiate instruction memory and signals
wire [13:0] imem_addr;
wire [31:0] imem_dataIn;
wire [31:0] imem_dout;
instr_mem #(.ADDR_WIDTH(14), .DATA_WIDTH(32)) instr_mem(.clk(clk), .we(1'b0), .addr(imem_addr), 
.dataIn(imem_dataIn), .dout(imem_dout));

//Instantiate control unit and signals
wire [31:0] alu_out_pre;
wire addr_valid, addr_reserved, addr_ro;
wire [2:0] mux_immSel;
wire mux_alu;
wire we_alu;
wire [3:0] aluop;
wire we_result;
wire we_dmem;
wire we_pc;
wire we_store;
wire [1:0] mux_store;
wire [2:0] mux_load;
wire [2:0] mux_wb;
wire we_rf;
wire mux_pc;
wire mux_jalr;
control_unit control_unit(.clk(clk), .rst(rst), .opcode(imem_dout[6:0]), .funct3(imem_dout[14:12]), 
.funct7(imem_dout[30]), .alu_result(alu_out_pre), .addr_valid(addr_valid), .addr_reserved(addr_reserved), 
.addr_ro(addr_ro), .mux_immSel(mux_immSel), .mux_alu(mux_alu), .we_alu(we_alu), .aluop(aluop), 
.we_result(we_result), .we_dmem(we_dmem), .we_pc(we_pc), .we_store(we_store), .mux_store(mux_store), 
.mux_load(mux_load), .mux_wb(mux_wb), .we_rf(we_rf), .mux_pc(mux_pc), 
.mux_jalr(mux_jalr), .state_reg_test(computer_state));

//Instantiate immediate generator
wire [31:0] immediate;
imm_gen imm_gen(.instruction(imem_dout), .immSel(mux_immSel), .imm(immediate));

//Instantiate register file
wire [31:0] reg_write_data;
wire [31:0] reg_data_1;
wire [31:0] reg_data_2;
reg_file reg_file(.clk(clk), .rst(rst), .we(we_rf), .read_reg_1(imem_dout[19:15]), .read_reg_2(imem_dout[24:20]), 
.write_reg(imem_dout[11:7]), .write_data(reg_write_data), .reg_data_1(reg_data_1), .reg_data_2(reg_data_2), 
.r7_out(r7_out), .r8_out(r8_out));

//Register file and ALU interconnects
reg [31:0] alu_oper_1, alu_oper_2;
always@(posedge clk)
begin
    if(we_alu)
    begin
        alu_oper_1 <= reg_data_1;
        alu_oper_2 <= mux_alu ? immediate : reg_data_2;
    end
end

//Instantiate ALU
reg [31:0] alu_out_reg;
alu alu(.in_1(alu_oper_1), .in_2(alu_oper_2), .control(aluop), .out(alu_out_pre));
always@(posedge clk)
begin
    if(we_result)
        alu_out_reg <= alu_out_pre;
end

//Instantiate address controller
addr_controller addr_controller(.alu_result(alu_out_pre), .addr_valid(addr_valid), 
.addr_reserved(addr_reserved), .addr_ro(addr_ro));

//Instantiate data memory
wire [31:0] dmem_dataIn, dmem_dout;
data_mem #(.ADDR_WIDTH(14), .DATA_WIDTH(32)) data_mem(.clk(clk), .we(we_dmem), .addr(alu_out_reg[15:2]), //Double check this
.dataIn(dmem_dataIn), .dout(d_mem_temp));

//Load instructions mux
wire [31:0] load_data_pre;
assign load_data_pre = mux_load[2] ? {16'h0, dmem_dout[15:0]} : (mux_load[1] ? (mux_load[0] ? {24'h0, dmem_dout[7:0]} : 
(dmem_dout)) : (mux_load[0] ? { {16{dmem_dout[15]}}, dmem_dout[15:0] }: { {24{dmem_dout[7]}}, dmem_dout[7:0] }));

//Store instructions mux
reg [31:0] store_data;
always@(posedge clk)
begin
    if(we_store)
        store_data <= reg_data_2;
end
assign dmem_dataIn = mux_store[1] ? {16'h0, store_data[15:0]} :(mux_store[0] ? {24'h0, store_data[7:0]} : 
(store_data));

//Program counter instantiation
reg [31:0] pc_reg;
wire [31:0] pc_next;
always@(posedge clk)
begin
    if(rst)
        pc_reg <= 32'h01000000;
    else if(we_pc)
        pc_reg <= pc_next;
    else
        pc_reg <= pc_reg;
end
assign imem_addr = pc_reg[15:2];

//Program counter next logic
wire [31:0] pc4;
assign pc4 = pc_reg + 3'b100;
wire [31:0] pc_branch;
assign pc_branch = (mux_jalr ? alu_out_reg : pc_reg) + immediate;
assign pc_next = mux_pc ? pc_branch : pc4;

//Write back register file logic
wire [31:0] mux_wb_entry_3, mux_wb_entry_4;
assign mux_wb_entry_3 = {imem_dout[31:12], 12'b0};
assign mux_wb_entry_4 = pc_reg + {imem_dout[31:12], 12'b0};
assign reg_write_data = mux_wb[2] ? mux_wb_entry_4 : (mux_wb[1] ? (mux_wb[0] ? mux_wb_entry_3 : 
pc4) : (mux_wb[0] ? load_data_pre : alu_out_reg));

//Temporary Output
assign data_memory = dmem_dout;

//LEDs and switches

always @(posedge clk)
begin
    if(rst)
        leds <= 16'h0000;
    else if (alu_out_reg[15:2] == 32'h00100014 && we_dmem)
        leds <= dmem_dataIn[15:0];
end

assign dmem_out = (alu_out_reg[15:2] == 32'h00100010) ? switches : d_mem_temp;

endmodule
