`timescale 1ps/1ps

module tb_imm_gen;

parameter TESTAMOUNT = 2700;
parameter VERBOSE = 0;

reg [31:0] test_instructions[TESTAMOUNT-1:0];
reg [2:0] test_immSel[TESTAMOUNT-1:0];
reg [31:0] test_answer[TESTAMOUNT-1:0];

reg [31:0] instruction;
reg [2:0] immSel;
wire [31:0] imm;

integer file;
integer i;
integer j;

// Instantiate the Unit Under Test (UUT)
imm_gen uut (
    .instruction(instruction),
    .immSel(immSel),
    .imm(imm)
);

initial begin
    file = $fopen("tb_imm_gen.txt", "r");
    i = 0;
    while (!$feof(file)) begin
        // reads binary numbers from file in format "32'b 10'b"
        $fscanf(file, "%b %b %b", test_instructions[i], test_immSel[i], test_answer[i]);
        i = i + 1;
    end
    $fclose(file);
end

initial begin
    j = 0;
    for (i = 0; i < TESTAMOUNT; i = i + 1) begin
        instruction = test_instructions[i];
        immSel = test_immSel[i];
        #1;
        if (imm != test_answer[i]) begin
            $display("Error: %d test failed!", i);
            if (VERBOSE) begin
                $display("Debug: immSel = %b, instruction = %b, imm = %b, answer = %b", immSel, instruction, imm, test_answer[i]);
            end
            j = j + 1;
        end
    end

    if (j == 0) begin
        $display("All tests passed!");
    end else begin
        $display("Error: %d tests failed!", j);
    end
end

endmodule
