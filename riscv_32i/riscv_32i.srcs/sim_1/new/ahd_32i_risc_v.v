//////////////////////////////////////////////////////////////////////////////////
// Company: NYU TANDON
// Engineers: BRAVO JAIN MARKOWSKI
// 
// Create Date: 10/31/2023 08:51:42 PM
// Design Name: FPGA RISC-V REV32I 
// Module Name: ahd_6463_risc_v
// Project Name: BAYRISC
// Target Devices: BAYSYS 3
// Tool Versions: 
// Description: Adv. Hardware Design by Prof. Karri
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 Milestone 2
// Additional Comments: TODO: 
//
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps



module ahd_6463_risc_v(
    input wire en,rst,clk,
    output reg [15:0] LED
    );
    
    reg [31:0] program_counter;
    
    
    reg [4:0] src1_addr_REG;
    reg [4:0] src2_addr_REG;
    reg [4:0] dst1_addr_REG;
    
    wire [31 : 0] src1_data_REG;
    wire [31 : 0] src2_data_REG;
    reg [31 : 0] dst1_input_REG;
    
    
    reg [31: 0] CONTROL_REGISTER;
   
    reg [3: 0] PROCESS_STATE;
    reg [3: 0] PROCESS_SUBSTATE;
    reg [31: 0] OP_INSTR;
    
//    reg [31:0] I_MEM [0:100];
    reg [31:0] D_MEM [0:100];
     
    register_file REG_FILE_INST (
        .clk(clk),
        .rst(rst),
        .en(en),
        .addr_1(src1_addr_REG),
        .addr_2(src2_addr_REG),
        .addr_3(dst1_addr_REG),
        .out_buf_1(src1_data_REG),
        .out_buf_2(src2_data_REG),
        .inp_buf_3(dst1_input_REG)
    );


    wire [31 : 0] data_bus_MEM;
    reg [12 : 0] data_addr_MEM;
    reg [31:0] data_WRITE;
    reg  [1:0] data_WE_CTRL;

    wire [31 : 0] instr_bus_MEM;
    reg [12 : 0] instr_addr_MEM;
    reg [31:0] instr_WRITE;
    reg instr_WE_CTRL;
        
    
    mem_instr MEM_INST (
        .clk(clk),
        .we(instr_WE_CTRL),
        .dout(instr_bus_MEM),
        .addr(instr_addr_MEM),
        .dataIn(instr_WRITE)
    );
    
    mem_data MEM_DATA (
        .clk(clk),
        .we(data_WE_CTRL),
        .dout(data_bus_MEM),
        .addr(data_addr_MEM),
        .dataIn(data_WRITE)
    );
    
    //control signals 
        
    integer curr_pc;
    
    integer opcode;
    integer opfunc;
    
    
//    integer rs1;
//    integer rs2;
//    integer rd;
    

//    reg[4:0] addr_rd;
//    reg[4:0] addr_rs1;
//    reg[4:0] addr_rs2;
    
//    integer rd;
//    integer rs1;
//    integer rs2;
    
    
    reg[19:0] upper_bits;

    initial begin
    	    $readmemh("data.mem", D_MEM);
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            OP_INSTR <= 32'h0;
            program_counter <= 32'h00000000; // TODO : RESET TO SPEC
            PROCESS_SUBSTATE <= 4'b0000;
        end else begin
            case (PROCESS_STATE)
                4'b0000: begin
                    //PC UPDATE
                    curr_pc = program_counter;
//                    program_counter <= program_counter + 4;
                    PROCESS_STATE <= 4'b0001;
                    end
                4'b0001: begin
                    //FETCH
                    instr_addr_MEM <= curr_pc;
                    PROCESS_STATE <= 4'b0010;
                    end
                4'b0010: begin
                    // DECODE
                    OP_INSTR <= instr_bus_MEM;
                    opcode <= instr_bus_MEM[6:0];                    
                    opfunc <= instr_bus_MEM[14:12];  
                        
//                    rs1 <= instr_bus_MEM[19:15];
//                    rs2 <= instr_bus_MEM[24:20];
//                    rd <= instr_bus_MEM[11:7];
                    
                    src1_addr_REG <= instr_bus_MEM[19:15];
                    src2_addr_REG <= instr_bus_MEM[24:20];
                                      
                    PROCESS_STATE <= 4'b0011;
                    end
                4'b0011: begin
                    // EXECUTE
//                    $display("OP_INSTR:%h \t\tOPCODE: %0b",OP_INSTR,opcode);
                    case (opcode)
                        7'h37: begin // LUI
                            dst1_addr_REG <= OP_INSTR[11:7];
                            dst1_input_REG <= { OP_INSTR[31:12] , 12'b0 };
                        end
                        7'h17: begin // AUIPC 
                            dst1_addr_REG <= OP_INSTR[11:7];
                            dst1_input_REG <= program_counter + { OP_INSTR[31:12] , 12'b0 };
                        end
                        7'h6F: begin // JAL
                          dst1_addr_REG <= OP_INSTR[11:7];
                          // MAKE AVAILIBLE DATA TO  MEMORY FETCH TO REGISTER FILE 
                          dst1_input_REG <= program_counter + 4;
                          program_counter <= program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[19:12],instr_bus_MEM[20],instr_bus_MEM[30:21]});
                          PROCESS_STATE <= 4'b0000;
                        end
                        7'h67: begin //JALR
                          dst1_addr_REG <= OP_INSTR[11:7];
                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                          dst1_input_REG <= program_counter + 4;
                          program_counter <= src1_data_REG + $signed({instr_bus_MEM[31],instr_bus_MEM[19:12],instr_bus_MEM[20],instr_bus_MEM[30:21]});
                          PROCESS_STATE <= 4'b0000;
                        end
                        7'h63:
                            case(opfunc)
                                3'b000: begin // BEQ
                                program_counter = (src1_data_REG == src1_data_REG ) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end
                                3'b001: begin// BNE
                                program_counter = (src1_data_REG != src1_data_REG ) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end
                                3'b100:begin// BLT
                                program_counter = ($signed(src1_data_REG) < $signed(src1_data_REG)) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end
                                3'b101: begin// BGE
                                program_counter = ($signed(src1_data_REG) >= $signed(src1_data_REG)) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end
                                3'b110:begin// BLTU
                                program_counter = ($unsigned(src1_data_REG) < $unsigned(src1_data_REG) ) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end
                                3'b111: begin// BGEU
                                program_counter = ($unsigned(src1_data_REG) < $unsigned(src1_data_REG)) ? program_counter + $signed({instr_bus_MEM[31],instr_bus_MEM[7],instr_bus_MEM[30:25],instr_bus_MEM[11:8]}) : program_counter + 4; 
                                PROCESS_STATE <= 4'b0000;
                                end                                
                            endcase

                        7'h03: begin //LOAD 
                            case (opfunc) 
                                3'b000: begin // LB
    //                                src1_addr_REG <=  
                                      if (PROCESS_SUBSTATE == 4'b0000) begin
                                        // GIVE MEMORY ADDRESS TO LOAD
                                        data_addr_MEM <= src1_data_REG + $signed(instr_bus_MEM);
                                        PROCESS_SUBSTATE <= 4'b0001;
                                        PROCESS_STATE <= PROCESS_STATE - 1;
                                      end else begin 
                                          // TELL REGISTER FILE WHICH DST WILL BE USED
                                          PROCESS_SUBSTATE <= 4'b0000;
                                          dst1_addr_REG <= OP_INSTR[11:7];
                                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                                          dst1_input_REG <= $signed(data_bus_MEM[7:0]);
                                      end 
                                end
                                3'b001: begin // LH
                                      if (PROCESS_SUBSTATE == 4'b0000) begin
                                        // GIVE MEMORY ADDRESS TO LOAD
                                        data_addr_MEM <= src1_data_REG + $signed(instr_bus_MEM);
                                        PROCESS_SUBSTATE <= 4'b0001;
                                        PROCESS_STATE <= PROCESS_STATE - 1;
                                      end else begin 
                                          // TELL REGISTER FILE WHICH DST WILL BE USED
                                          PROCESS_SUBSTATE <= 4'b0000;
                                          dst1_addr_REG <= OP_INSTR[11:7];
                                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                                          dst1_input_REG <= $signed(data_bus_MEM[15:0]);
                                      end 
                                end
                                3'b010: begin // LW
                                      if (PROCESS_SUBSTATE == 4'b0000) begin
                                        // GIVE MEMORY ADDRESS TO LOAD
                                        data_addr_MEM <= src1_data_REG + $signed(instr_bus_MEM);
                                        PROCESS_SUBSTATE <= 4'b0001;
                                        PROCESS_STATE <= PROCESS_STATE - 1;
                                      end else begin 
                                          // TELL REGISTER FILE WHICH DST WILL BE USED
                                          PROCESS_SUBSTATE <= 4'b0000;
                                          dst1_addr_REG <= OP_INSTR[11:7];
                                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                                          dst1_input_REG <= $signed(data_bus_MEM);
                                      end
                                end
                                3'b100: begin // LBU
                                      if (PROCESS_SUBSTATE == 4'b0000) begin
                                        // GIVE MEMORY ADDRESS TO LOAD
                                        data_addr_MEM <= src1_data_REG + $signed(instr_bus_MEM);
                                        PROCESS_SUBSTATE <= 4'b0001;
                                        PROCESS_STATE <= PROCESS_STATE - 1;
                                      end else begin 
                                          // TELL REGISTER FILE WHICH DST WILL BE USED
                                          PROCESS_SUBSTATE <= 4'b0000;
                                          dst1_addr_REG <= OP_INSTR[11:7];
                                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                                          dst1_input_REG <= $unsigned(data_bus_MEM[7:0]);
                                      end
                                end
                                3'b101: begin // LHU
                                      if (PROCESS_SUBSTATE == 4'b0000) begin
                                        // GIVE MEMORY ADDRESS TO LOAD
                                        data_addr_MEM <= src1_data_REG + $signed(instr_bus_MEM);
                                        PROCESS_SUBSTATE <= 4'b0001;
                                        PROCESS_STATE <= PROCESS_STATE - 1;
                                      end else begin 
                                          // TELL REGISTER FILE WHICH DST WILL BE USED
                                          PROCESS_SUBSTATE <= 4'b0000;
                                          dst1_addr_REG <= OP_INSTR[11:7];
                                          // MAKE AVAILIBLE RESULT OF MEMORY FETCH TO REGISTER FILE 
                                          dst1_input_REG <= $unsigned(data_bus_MEM[15:0]);
                                      end
                                end
                            endcase
                        end
                        7'h23: begin //STORE
                            case (opfunc) 
                                3'b000: begin //SB
                                    data_addr_MEM <= src1_data_REG + $signed({instr_bus_MEM[31:25],instr_bus_MEM[11:7]});
                                    data_WE_CTRL <= 2'b01;
                                    data_WRITE <= src2_data_REG[7:0];                            
                                end
                                3'b001: begin //SH
                                    data_addr_MEM <= src1_data_REG + $signed({instr_bus_MEM[31:25],instr_bus_MEM[11:7]});
                                    data_WE_CTRL <= 2'b10;
                                    data_WRITE <= src2_data_REG[15:0];
                                end
                                3'b010: begin //SW
                                    data_addr_MEM <= src1_data_REG + $signed({instr_bus_MEM[31:25],instr_bus_MEM[11:7]});
                                    data_WE_CTRL <= 2'b11;
                                    data_WRITE <= src2_data_REG;
                                end
                            endcase
                        end

                        7'h13: begin // IMMEDIATE
                            dst1_addr_REG <= OP_INSTR[11:7];
                            case (opfunc)
                                3'b000: begin /// ADDI
                                    dst1_input_REG <= src1_data_REG + instr_bus_MEM[31:20];               
                                end 
                                3'b010: begin /// SLTI
                                    dst1_input_REG <= $signed(src1_data_REG)   <   $signed(instr_bus_MEM[31:20]) ?  1 : 0;               
                                end 
                                3'b011: begin /// SLTIU
                                    dst1_input_REG <= $unsigned(src1_data_REG) < $unsigned(instr_bus_MEM[31:20]) ?  1 : 0;               
                                end  
                                3'b100: begin /// XORI
                                    dst1_input_REG <= src1_data_REG ^ instr_bus_MEM[31:20];               
                                end 
                                3'b110: begin /// ORI
                                    dst1_input_REG <= src1_data_REG | instr_bus_MEM[31:20];               
                                end 
                                3'b111: begin /// ANDI
                                    dst1_input_REG <= src1_data_REG & instr_bus_MEM[31:20];               
                                end 
                                3'b001: begin /// SLLI
                                    dst1_input_REG <= src1_data_REG << instr_bus_MEM[31:20];               
                                end 
                                3'b101: begin /// SRLI & SRAI
                                    if (instr_bus_MEM[30]) begin
                                        dst1_input_REG <= $signed(src1_data_REG) >> instr_bus_MEM[31:20];               
                                    end else begin
                                        dst1_input_REG <= $unsigned(src1_data_REG) >> instr_bus_MEM[31:20];               
                                    end             
                                end 
                                default: begin
                                 
                                end
                            endcase 
                        end
                        7'h33: begin // Regular
                        dst1_addr_REG <= OP_INSTR[11:7];
                            case (opfunc)
                                3'b000: begin // ADD and SUB
                                    if (instr_bus_MEM[30]) begin
                                        dst1_input_REG <= src1_data_REG - src2_data_REG;
                                    end else begin
                                        dst1_input_REG <= src1_data_REG + src2_data_REG;
                                    end
                                    
                                    end
                                3'b001: begin // SLL
                                    
                                    dst1_input_REG <= src1_data_REG << src2_data_REG[4:0];
                                    
                                    end
                                3'b010: begin // SLT
                                    
                                    dst1_input_REG <= $signed(src1_data_REG) < $signed(src2_data_REG) ? 1 : 0;
                                    
                                    end
                                3'b011: begin // SLTU
                                    
                                    dst1_input_REG <= $unsigned(src1_data_REG) < $unsigned(src2_data_REG) ? 1 : 0;
                                    
                                    end
                                3'b100: begin // XOR
                                    
                                    dst1_input_REG <= src1_data_REG ^ src2_data_REG;
                                    
                                    end
                                3'b101: begin // SRL and SRA
                                    
                                    if (instr_bus_MEM[30]) begin
                                        dst1_input_REG <= $signed(src1_data_REG) << src2_data_REG[5:0];
                                    end else begin
                                        dst1_input_REG <= $unsigned(src1_data_REG) << src2_data_REG[5:0];
                                    end
                                  
                                    end
                                3'b110: begin // OR
                                    
                                    dst1_input_REG <= src1_data_REG | src2_data_REG;
                                    
                                    end
                                3'b111: begin // AND
                                
                                    dst1_input_REG <= src1_data_REG & src2_data_REG;
                                
                                    end
                            endcase 
                        end
                        7'h0F: begin //FENCE
                            LED <= dst1_input_REG[15:0];
                        end
                        7'h73: begin //ECALL & EBREAK
                            LED <= dst1_input_REG[15:0];
                        end
                        
                        default : begin
//                            $display("\t\t\t\tERROR!!!\t\tUNKOWN OPCODE:\t\t %x \t\t %0b", opcode,opcode);
                        end
                    endcase

                    PROCESS_STATE <= PROCESS_STATE + 1;
                    end
                4'b0100: begin
                    // MEM ACCESS


                    PROCESS_STATE <= 4'b0101;
                    end
                4'b0101: begin
                    // WRITE BACK


                    dst1_addr_REG <= 32'b0; 
                    dst1_input_REG <= 32'b1;
                    
                    
                    PROCESS_STATE <= 4'b0110;
                    end    
                default : begin 
                    //GOTO FETCH
                    program_counter <= program_counter + 4;
                    PROCESS_STATE <= 4'b0000;
                    end
             endcase
        end
        
     end 
endmodule