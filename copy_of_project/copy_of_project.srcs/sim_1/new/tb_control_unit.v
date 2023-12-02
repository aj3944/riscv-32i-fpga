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
        #1000 $finish;
    end
    
    initial
    begin
        #10;
        rst = 1;
        #10;
        //--------------------------Test ADD instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: ADD instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0000)
            $fatal(1, "EX: ADD instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: ADD instruction failed");
            
            
        //--------------------------Test SUB instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 7'b0100000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SUB instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "EX: SUB instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SUB instruction failed");
        
        //--------------------------Test SLL instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b001;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SLL instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0001)
            $fatal(1, "EX: SLL instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SLL instruction failed");
            
        //--------------------------Test SLT instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b010;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SLT instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0010)
            $fatal(1, "EX: SLT instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SLT instruction failed");
            
        //--------------------------Test SLTU instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b011;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SLTU instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0011)
            $fatal(1, "EX: SLTU instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SLTU instruction failed");
        
        //--------------------------Test XOR instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b100;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: XOR instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0100)
            $fatal(1, "EX: XOR instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: XOR instruction failed");
            
        //--------------------------Test SRL instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b101;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SRL instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0101)
            $fatal(1, "EX: SRL instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SRL instruction failed");
            
        //--------------------------Test SRA instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b101;
        funct7 = 7'b0100000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: SRA instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1101)
            $fatal(1, "EX: SRA instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: SRA instruction failed");
            
        //--------------------------Test OR instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b110;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: OR instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0110)
            $fatal(1, "EX: OR instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: OR instruction failed");
            
        //--------------------------Test AND instruction(R-TYPE)--------------------------
        opcode = 7'b0110011;
        funct3 = 3'b111;
        funct7 = 7'b0000000;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b0)
            $fatal(1, "ID: AND instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0111)
            $fatal(1, "EX: AND instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: AND instruction failed");
        
        //--------------------------Test JALR instruction(I-TYPE)--------------------------
        opcode = 7'b1100111;
        funct3 = 3'b000;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b000))
            $fatal(1, "ID: JALR instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0000)
            $fatal(1, "EX: JALR instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b010) || (we_rf !== 1'b1) || (mux_jalr !== 1'b1) || (mux_pc !== 1'b1) || (we_pc !== 1'b1))
            $fatal(1, "WB: JALR instruction failed");
        
        //--------------------------XORI instruction(I-TYPE)--------------------------
        opcode = 7'b0010011;
        funct3 = 3'b100;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b1 || mux_se !== 3'b000)
            $fatal(1, "ID: XORI instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0100)
            $fatal(1, "EX: XORI instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: XORI instruction failed");
        
        //--------------------------BEQ instruction(B-TYPE) (branch not taken)--------------------------
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $fatal(1, "ID: BEQ instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "EX: BEQ instruction failed");
        alu_result = 32'h1;
        #10;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: BEQ instruction failed");
        
        //--------------------------BEQ instruction(B-TYPE) (branch taken)--------------------------
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $fatal(1, "ID: BEQ instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b1000)
            $fatal(1, "EX: BEQ instruction failed");
        alu_result = 32'h0;
        #10;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_jalr !== 1'b0) || (mux_pc !== 1'b1) || (we_pc !== 1'b1))
            $fatal(1, "WB: BEQ instruction failed");
        
        //--------------------------LW instruction(I-TYPE)--------------------------
        opcode = 7'b0000011;
        funct3 = 3'b010;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_se !== 3'b000) || (mux_alu !== 1'b1))
            $fatal(1, "ID: LW instruction failed");
        #10;
        //EX stage
        if((aluop !== 4'b0000) || (we_alu !== 1'b1))
            $fatal(1, "EX: LW instruction failed");
        #10;
        //MEM stage
        if((we_result !== 1'b1) || (mux_load !== 3'b010))
            $fatal(1, "MEM: LW instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b001) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $fatal(1, "WB: LW instruction failed");
        
        //--------------------------SH instruction(S-TYPE)--------------------------
        opcode = 7'b0100011;
        funct3 = 3'b001;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //IF stage
        #10;
        //ID stage
        if(mux_alu !== 1'b1 || mux_se !== 3'b001)
            $fatal(1, "ID: SH instruction failed");
        #10;
        //EX stage
        if(aluop !== 4'b0000)
            $fatal(1, "EX: SH instruction failed");
        #10;
        //WB stage
        if((we_result !== 1'b1) || (we_dmem !== 1'b1) || (we_pc !== 1'b1) || (we_store !== 1'b1))
            $fatal(1, "MEM: SH instruction failed");

        //--------------------------LUI instruction(U-TYPE)--------------------------
        opcode = 7'b0110111;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_wb !== 3'b011) || (we_rf !== 1'b1))
            $fatal(1, "ID: LUI instruction failed");

        //--------------------------AUIPC instruction(U-TYPE)--------------------------
        opcode = 7'b0010111;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_wb !== 3'b100) || (we_rf !== 1'b1))
            $fatal(1, "ID: AUIPC instruction failed");

        //--------------------------JAL instruction(J-TYPE)--------------------------
         //IF stage
        opcode = 7'b1101111;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rst = 0;
        #10;
        //IF stage
        #10;
        //ID stage
        if((mux_wb !== 3'b010) || (we_rf !== 1'b1) || (mux_se !== 3'b000) ||(mux_jalr !== 1'b0))
            $fatal(1, "ID: JAL instruction failed");
        #10;
        
        $display("All tests passed");
            
    end
    
endmodule
