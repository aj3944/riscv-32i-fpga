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
Stochastic stsate machine testing in python to test as many as possible followed by manual edge case testing for tricky states and opcodes. >2000 cases tested.
- ALU TB
Tests all functionality. Combinational logic makes timing test easy.
- Register File TB
Tests Load, store and address decode. Write protection and reset testing also done.
- Instruction and Data Memory  TB
	Tests read and write and write protection.
### Team
	> Andres Bravo (afb389)
	> Archit Jain (aj3944)
	> Patryk Markowski (pm3004)
	
