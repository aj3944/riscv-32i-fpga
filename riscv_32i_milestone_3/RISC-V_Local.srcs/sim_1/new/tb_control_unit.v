`timescale 1ns / 1ps

module tb_control_unit(
    );
    
    reg clk, rst;
    reg [6:0] opcode;
    reg [2:0] funct3;
    reg funct7;
    reg [31:0] alu_result;
    reg addr_valid, addr_reserved, addr_ro;
    
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
    wire [31:0] state_reg_test;
    
    control_unit dut(.clk(clk), .rst(rst), .opcode(opcode), .funct3(funct3), .funct7(funct7), .alu_result(alu_result), 
    .addr_valid(addr_valid), .addr_reserved(addr_reserved), .addr_ro(addr_ro),
    .mux_se(mux_se), .mux_alu(mux_alu), .we_alu(we_alu), .aluop(aluop), .we_result(we_result), .we_dmem(we_dmem), 
    .we_pc(we_pc), .we_store(we_store), .mux_store(mux_store), .mux_load(mux_load), .mux_wb(mux_wb), .we_rf(we_rf), 
    .mux_pc(mux_pc), .mux_jalr(mux_jalr), .state_reg_test(state_reg_test));
    
    localparam T = 100;
    always
    begin
        clk <= 1'b1;
        #(T/2);
        clk <= 1'b0;
        #(T/2);
    end
    
    initial
    begin
        #10000 $finish;
    end
    
    initial
    begin
        #T;
        rst = 1'b1;
        #T;
        
        //--------------------------Test ADD instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 1'b0;
        rst = 1'b0;
        alu_result = 32'h0;
        addr_valid = 1'b1;
        addr_reserved = 1'b0;
        addr_ro = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: ADD instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0000)
            $error(1, "EX: ADD instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: ADD instruction failed");
        #T;
            
        //--------------------------Test SUB instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 1'b1;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SUB instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b1000)
            $error(1, "EX: SUB instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SUB instruction failed");
        #T;
        
        //--------------------------Test SLL instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b001;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SLL instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0001)
            $error(1, "EX: SLL instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SLL instruction failed");
        #T;
        
        //--------------------------Test SLT instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b010;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SLT instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0010)
            $error(1, "EX: SLT instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SLT instruction failed");
        #T;
        
        //--------------------------Test SLTU instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b011;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SLTU instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0011)
            $error(1, "EX: SLTU instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SLTU instruction failed");
        #T;
        
        //--------------------------Test XOR instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b100;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: XOR instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0100)
            $error(1, "EX: XOR instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: XOR instruction failed");
        #T;
        
        //--------------------------Test SRL instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b101;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SRL instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0101)
            $error(1, "EX: SRL instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SRL instruction failed");
        #T;
            
        //--------------------------Test SRA instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b101;
        funct7 = 1'b1;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SRA instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b1101)
            $error(1, "EX: SRA instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SRA instruction failed");
        #T;
            
        //--------------------------Test OR instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b110;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: OR instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0110)
            $error(1, "EX: OR instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: OR instruction failed");
        #T;
            
        //--------------------------Test AND instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b111;
        funct7 = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: AND instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0111)
            $error(1, "EX: AND instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: AND instruction failed");
        #T;
        
        //--------------------------Test JALR instruction(I-TYPE)--------------------------
        //IF stage
        opcode = 7'b1100111;
        funct3 = 3'b000;
        #T;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b000))
            $error(1, "ID: JALR instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0000)
            $error(1, "EX: JALR instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b010) || (we_rf !== 1'b1) || (mux_jalr !== 1'b1) || (mux_pc !== 1'b1) || (we_pc !== 1'b1))
            $error(1, "WB: JALR instruction failed");
        #T;
        
        //--------------------------XORI instruction(I-TYPE)--------------------------
        //IF stage
        opcode = 7'b0010011;
        funct3 = 3'b100;
        funct7 = 1'b0;
        rst = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b1 || mux_se !== 3'b000)
            $error(1, "ID: XORI instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0100)
            $error(1, "EX: XORI instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: XORI instruction failed");
        #T;
        
        //--------------------------BEQ instruction(B-TYPE) (branch not taken)--------------------------
        //IF stage
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #T;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $error(1, "ID: BEQ instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b1000)
            $error(1, "EX: BEQ instruction failed");
        alu_result = 32'h1;
        #T;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: BEQ instruction failed");
        #T;
        
        //--------------------------BEQ instruction(B-TYPE) (branch taken)--------------------------
        //IF stage
        opcode = 7'b1100011;
        funct3 = 3'b000;
        #T;
        //ID stage
        if((mux_alu !== 1'b1) || (mux_se !== 3'b010))
            $error(1, "ID: BEQ instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b1000)
            $error(1, "EX: BEQ instruction failed");
        alu_result = 32'h0;
        #T;
        //WB stage
        if((we_result !== 1'b1) || (we_rf !== 1'b0) || (mux_jalr !== 1'b0) || (mux_pc !== 1'b1) || (we_pc !== 1'b1))
            $error(1, "WB: BEQ instruction failed");
        #T;
        
        //--------------------------LW instruction(I-TYPE)--------------------------
        //IF stage
        opcode = 7'b0000011;
        funct3 = 3'b010;
        #T;
        //ID stage
        if((mux_se !== 3'b000) || (mux_alu !== 1'b1))
            $error(1, "ID: LW instruction failed");
        #T;
        //EX stage
        if((aluop !== 4'b0000) || (we_alu !== 1'b1))
            $error(1, "EX: LW instruction failed");
        #T;
        //MEM stage
        if((we_result !== 1'b1) || (mux_load !== 3'b010))
            $error(1, "MEM: LW instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b001) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: LW instruction failed");
        #T;
        
        //--------------------------SH instruction(S-TYPE)--------------------------
        //IF stage
        opcode = 7'b0100011;
        funct3 = 3'b001;
        funct7 = 1'b0;
        rst = 1'b0;
        #T;
        //ID stage
        if(mux_alu !== 1'b1 || mux_se !== 3'b001)
            $error(1, "ID: SH instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b0000)
            $error(1, "EX: SH instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (we_dmem !== 1'b1) || (we_pc !== 1'b1) || (we_store !== 1'b1))
            $error(1, "MEM: SH instruction failed");
        #T;

        //--------------------------LUI instruction(U-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110111;
        funct3 = 3'b000;
        funct7 = 1'b0;
        rst = 1'b0;
        #T;
        //ID stage
        if((mux_wb !== 3'b011) || (we_rf !== 1'b1))
            $error(1, "ID: LUI instruction failed");
        #T;

        //--------------------------AUIPC instruction(U-TYPE)--------------------------
        //IF stage
        opcode = 7'b0010111;
        funct3 = 3'b000;
        funct7 = 1'b0;
        rst = 1'b0;
        #T;
        //ID stage
        if((mux_wb !== 3'b100) || (we_rf !== 1'b1))
            $error(1, "ID: AUIPC instruction failed");
        #T;

        //--------------------------JAL instruction(J-TYPE)--------------------------
        //IF stage
        opcode = 7'b1101111;
        funct3 = 3'b000;
        funct7 = 1'b0;
        rst = 1'b0;
        #T;
        //ID stage
        if((mux_wb !== 3'b010) || (we_rf !== 1'b1) || (mux_se !== 3'b000) ||(mux_jalr !== 1'b0))
            $error(1, "ID: JAL instruction failed");
        #T;
            
        //--------------------------Test SUB instruction(R-TYPE)--------------------------
        //IF stage
        opcode = 7'b0110011;
        funct3 = 3'b000;
        funct7 = 1'b1;
        #T;
        //ID stage
        if(mux_alu !== 1'b0)
            $error(1, "ID: SUB instruction failed");
        #T;
        //EX stage
        if(aluop !== 4'b1000)
            $error(1, "EX: SUB instruction failed");
        #T;
        //WB stage
        if((we_result !== 1'b1) || (mux_wb !== 3'b000) || (we_rf !== 1'b1) || (mux_pc !== 1'b0) || (we_pc !== 1'b1))
            $error(1, "WB: SUB instruction failed");
        #T;
        
        $display("All tests passed");
            
    end
    
endmodule
