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
    output reg [31:0] led_out
    );
    
    reg [31:0] program_counter;
    
    
    wire [4:0] addr_bus_SRC1;
    wire [4:0] addr_bus_SRC2;
    reg [4:0] addr_bus_DST1;
    
    wire [31 : 0] data_bus_SRC1;
    wire [31 : 0] data_bus_SRC2;
    reg [31 : 0] data_bus_DST1;
    
    
    reg [31: 0] CONTROL_REGISTER;
   
    reg [3: 0] PROCESS_STATE;
    reg [31: 0] OP_INSTR;
    
//    reg [31:0] I_MEM [0:100];
    reg [31:0] D_MEM [0:100];
     
    register_file REG_FILE_INST (
        .clk(clk),
        .rst(rst),
        .en(en),
        .addr_1(addr_bus_SRC1),
        .addr_2(addr_bus_SRC1),
        .addr_3(addr_bus_DST1),
        .out_buf_1(data_bus_SRC1),
        .out_buf_2(data_bus_SRC2),
        .inp_buf_3(data_bus_DST1)
    );


    reg [31 : 0] data_bus_MEM;
    reg [12 : 0] data_addr_MEM;
    reg [31:0] data_WRITE;
    wire data_WE_CTRL;

    reg [31 : 0] instr_bus_MEM;
    reg [12 : 0] instr_addr_MEM;
    reg [31:0] instr_WRITE;
    wire instr_WE_CTRL;
        
    
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
    

    reg[4:0] addr_rd;
    reg[4:0] addr_rs1;
    reg[4:0] addr_rs2;
    
    integer rd;
    integer rs1;
    integer rs2;
    
    
    reg[19:0] upper_bits;

    initial begin
    	    $readmemh("data.mem", D_MEM);
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            OP_INSTR <= 32'h0;
            program_counter <= 32'h00000000; // TODO : RESET TO SPEC
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
                    instr_bus_MEM <= curr_pc;
     
                    PROCESS_STATE <= 4'b0010;
                    end
                4'b0010: begin
                    // DECODE
                    OP_INSTR <= instr_bus_MEM;
                    opcode <= instr_bus_MEM[6:0];                    
                    opfunc <= instr_bus_MEM[14:12];  
                        
                    rs1 <= instr_bus_MEM[19:15];
                    rs2 <= instr_bus_MEM[24:20];
                    rd <= instr_bus_MEM[11:7];
                                      
                    PROCESS_STATE <= 4'b0011;
                    end
                4'b0011: begin
                    // EXECUTE
                    $display("OP_INSTR:%h \t\tOPCODE: %0b",OP_INSTR,opcode);
                    case (opcode)
                        7'h37: begin // LUI
                            addr_bus_DST1 <= OP_INSTR[11:7];
                            data_bus_DST1 <= { OP_INSTR[31:12] , 12'b0 };
                        end
                        7'h17: begin // AUIPC 
                            addr_bus_DST1 <= OP_INSTR[11:7];
                            data_bus_DST1 <= program_counter + { OP_INSTR[31:12] , 12'b0 };
                        end
                        7'h13: begin // IMMEDIATE
                            case (opfunc)
                                3'b000: begin /// ADDI
                                    rd <= rs1 + instr_bus_MEM[31:20];               
                                end 
                                3'b010: begin /// SLTI
                                    rd <= $signed(rs1)   <   $signed(instr_bus_MEM[31:20]) ?  1 : 0;               
                                end 
                                3'b011: begin /// SLTIU
                                    rd <= $unsigend(rs1) < $unsigned(instr_bus_MEM[31:20]) ?  1 : 0;               
                                end  
                                3'b100: begin /// XORI
                                    rd <= rs1 ^ instr_bus_MEM[31:20];               
                                end 
                                3'b110: begin /// ORI
                                    rd <= rs1 | instr_bus_MEM[31:20];               
                                end 
                                3'b111: begin /// ANDI
                                    rd <= rs1 & instr_bus_MEM[31:20];               
                                end 
                                3'b001: begin /// SLLI
                                    rd <= rs1 << instr_bus_MEM[31:20];               
                                end 
                                3'b101: begin /// SRLI
                                    rd <= rs1 >> instr_bus_MEM[31:20];               
                                end 
                                default: begin
                                 
                                end
                            endcase 
                            addr_bus_DST1 <= OP_INSTR[11:7];
                            data_bus_DST1 <= program_counter + { OP_INSTR[31:12] , 12'b0 };
                        end

                        default : begin
                            $display("\t\t\t\tERROR!!!\t\tUNKOWN OPCODE:\t\t %x \t\t %0b", opcode,opcode);
                        end
                    endcase

                    PROCESS_STATE <= 4'b0100;
                    end
                4'b0100: begin
                    // MEM ACCESS


                    PROCESS_STATE <= 4'b0101;
                    end
                4'b0101: begin
                    // WRITE BACK


                    addr_bus_DST1 <= 32'b0; 
                    data_bus_DST1 <= 32'b1;
                    
                    
                    PROCESS_STATE <= 4'b0110;
                    end    
                default : begin 
                    //GOTO FETCH
                    program_counter <= program_counter + 1;
                    PROCESS_STATE <= 4'b0000;
                    end
             endcase
        end
        
     end 
endmodule