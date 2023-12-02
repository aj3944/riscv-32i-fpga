`timescale 1ns / 1ps

module tb_control_unit(
    );
    
    reg clk, rst;
    reg [6:0] opcode;
    reg [2:0] funct3;
    reg [6:0] funct7;
    
reg [31:0] alu_result;
    
    wire [2:0] mux_se;
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
    
    control_unit dut(.clk(clk), .rst(rst), .opcode(opcode), .funct3(funct3), .funct7(funct7), .alu_result(alu_result), 
    .mux_se(mux_se), .mux_alu(mux_alu), .we_alu(we_alu), .aluop(aluop), .we_result(we_result), .we_dmem(we_dmem), 
    .we_pc(we_pc), .we_store(we_store), .mux_store(mux_store), .mux_load(mux_load), .mux_wb(mux_wb), .we_rf(we_rf), 
    .mux_pc(mux_pc), .mux_jalr(mux_jalr));
    
    always
    begin
        clk <= 1'b1;
        #5;
        clk <= 1'b0;
        #5;
    end
    
    initial
    begin
        #500 $finish;
    end
    
    initial
    begin
        #10;
        rst = 1;
        #10;
        //Test add instruction
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ADD instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0000)
            $fatal(1, "ADD instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 2'b00) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "ADD instruction failed");
        //Test sub instruction
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 7'b0100000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "SUB instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "SUB instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 2'b00) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "SUB instruction failed");
        //Test beq instruction, with branch not taken
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $fatal(1, "BEQ instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "BEQ instruction failed");
        alu_result = 32'h1;
        #10;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "BEQ instruction failed");
        //Test beq instruction, with branch taken
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $fatal(1, "BEQ instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "BEQ instruction failed");
        alu_result = 32'h0;
        #10;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_jalr !== 1'b0) || (mux_pc !== 1'b1) || (we_pc !== 1'b1))
            $fatal(1, "BEQ instruction failed");
        //Test lw instruction
        opcode = 7'b0000011;
        funct3 = 3'b010;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_se !== 3'b000) || (mux_alu !== 1'b1))
            $fatal(1, "LW instruction failed");
        #10;
        //EX stage
        if((aluop !== 4'b0000) || (we_alu !== 1'b1))
            $fatal(1, "LW instruction failed");
        #10;
        //MEM stage
        if((we_result !== 1'b1) || (mux_load !== 3'b010))
            $fatal(1, "LW instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 2'b01) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "LW instruction failed");
        $display("All tests passed");
            
    end
    
endmodule
