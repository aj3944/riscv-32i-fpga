all:
	riscv32-unknown-elf-gcc -x assembler-with-cpp -c -O0 -Wall -fmessage-length=0 -march=rv32i -mabi=ilp32 -mcmodel=medlow -I./ main.s -o main.o
	riscv32-unknown-elf-gcc main.o -Wall -Wl,--no-relax -Wl,--gc-sections -nostdlib -nostartfiles -lgcc --specs=nosys.specs -march=rv32i -mabi=ilp32 -mcmodel=medlow -o main.elf --entry main
	riscv32-unknown-elf-objcopy -S -O binary main.elf main.bin
	riscv32-unknown-elf-size main.elf 
	riscv32-unknown-elf-objcopy -S -O ihex main.elf main.hex
	hexdump -ve '1/4 "%.8x\n"' main.bin > main.mem
	riscv32-unknown-elf-objdump --syms -d main.elf > main.dump