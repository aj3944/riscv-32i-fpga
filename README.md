#  RISC V 32I FPGA 
This project contains an implementation of RISC V in a baysys FPGA containing Artix 7. 

The following components make up the processor
## Components
- Control Unit
The central unit, fetches and decodes the opcodes and then generates the correct control signals to  control all the other elements of the processor. The central unit, fetches and decodes the opcodes and then generates the correct control signals to  control all the other elements of the processor. One noteworthy design choice for the control unit is that it updates on the falling edge of the clock whereas every other module in our design updates on the rising edge. This was done to make multi-cycling easier where the control unit would updates its control signals in preparation before the next rising edge when the actual state transition takes place in the entire processor.
- ALU
Performs basic arithmetic according to the control functions. Purely combinatoric and single cycle. We can perform add, subtract, logical and arithmetic shifting, XOR , AND and also compares. 
- Register File
32x32 Bit registers with two reads and one wrote in a simultaneous manner. Write protection prevents unwanted writes to the register file. 
- Instruction Memory
	12 bit wide address bus with 32 bit byte addressed with 2K bytes
- Data Memory
	12 bit wide address bus with 32 bit byte addressed with 4K bytes
## Test-benches
This project contains test-benches for each component and also tests the integration of all the components individually.
- Control Unit TB
Stochastic stsate machine testing in python to test as many as possible followed by manual edge case testing for tricky states and opcodes. >2000 cases tested. The control unit that we made was a finite state MOORE machine. Since the output of the machine depended on the current state, we made sure that our testbench tested to see if the output was correct for every possible machine state. We did this by applying an exhaustive list of different possible instructions to our control unit and making sure each had the proper outputs and state transitions.

- ALU TB
Tests all functionality, by manually testing each ALU operation. Since the module purely consists of combinational logic, static timing analysis suffices.
- Register File TB
Tests Load, store and register address decode. Write protection and reset testing also done.
- Instruction and Data Memory  TB
Tests read and write and write protection. For the instruction memory our testbench made sure to test if the memory was able to functionally read data when given an address and write data for a given address. In our final implementation we plan to use RAM for instruction memory because we plan to write to the memory instruction memory before any program execution. Two important design considerations were made for the memories. The first is that we chose to make them synchronous. This safe design choice was to avoid any possible glitches. Secondly we chose our memory to function in "no change mode" where the output of the memory does not change whenever we write to memory. Instead the output will remain at the last read data. We believe this configuration should suffice because the only instructions that interact with memory are the store instructions which only write to data memory and not to any register files. Our testbench reflects these design choices.
### Team
	> Andres Bravo (afb389)
	> Archit Jain (aj3944)
	> Patryk Markowski (pm3004)
	
