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
    
    reg [31:0] I_MEM [0:100];
//    reg [31:0] I_MEM [0:2*2**10];
//    reg [31:0] D_MEM [0:4*2**10];
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
    
        
    integer curr_pc;
    
    integer opcode;
    
    
    
    reg[4:0] addr_rd;
    reg[4:0] addr_rs1;
    reg[4:0] addr_rs2;
    
    integer rd;
    integer rs1;
    integer rs2;
    
    
    reg[19:0] upper_bits;

    initial begin
    	    $readmemh("instr.mem", I_MEM);
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
                    OP_INSTR <= I_MEM[curr_pc];
                    opcode <= I_MEM[curr_pc][6:0];                    
                    PROCESS_STATE <= 4'b0010;
                    end
                4'b0010: begin
                    // DECODE
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
                        7'h67: begin // JAL 
                            addr_bus_DST1 <= OP_INSTR[11:7];
                            data_bus_DST1 <= program_counter + { OP_INSTR[31:12] , 12'b0 };
                        end
                        default : begin
                            $display("\t\t\t\tERROR!!!\t\tUNKOWN OPCODE:\t\t %x \t\t %0b", opcode,opcode);
                        end
                    endcase

                    PROCESS_STATE <= 4'b0011;
                    end
                4'b0011: begin
                    // MEM ACCESS


                    PROCESS_STATE <= 4'b0100;
                    end
                4'b0100: begin
                    // WRITE BACK


                    addr_bus_DST1 <= 32'b0; 
                    data_bus_DST1 <= 32'b1;
                    
                    
                    PROCESS_STATE <= 4'b0101;
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