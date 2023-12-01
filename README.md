#  RISC V 32I FPGA 
This project contains an implementation of RISC V in a discovery FPGA containing Artix 7. 

The following components make up the processor
## Components
- Control Unit
The central unit, fetches and decodes the opcodes and then generates the correct control signals to  control all the other elements of the processor 
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
### Team
	> Andres Bravo (afb389)
	> Archit Jain (aj3944)
	> Patryk Markowski (pm3004)
	