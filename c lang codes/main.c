#include <stdio.h>
#include <stdint.h>
uint32_t symm_key[26] = {
    0x00000000,
    0x00000000,
	0x46F8E8C5,
	0x460C6085,
	0x70F83B8A,
	0x284B8303,
	0x513E1454,
	0xF621ED22,
	0x3125065D,
	0x11A83A5D,
	0xD427686B,
	0x713AD82D,
	0x4B792F99,
	0x2799A4DD,
	0xA7901C49,
	0xDEDE871A,
	0x36C03196,
	0xA7EFC249,
	0x61A78BB8,
	0x3B0A1D2B,
	0x4DBFCA76,
	0xAE162167,
	0x30D76B0A,
	0x43192304,
	0xF6CC1431,
	0x65046380,    
};

uint64_t rc5_encrypt(uint64_t INP){
	
	uint32_t round_A = (uint32_t)INP;
	uint32_t round_B = (uint32_t)(INP >> 32);
	uint64_t temp_A,temp_B;

	round_A = round_A + symm_key[0];	
	round_B = round_B + symm_key[1];

	for(int i=1; i<13; i++){
		temp_A = (round_A ^ round_B) << round_B;
		temp_B = (round_A ^ round_B) << round_A;

		round_A = temp_A + symm_key[i*2];	
		round_B = temp_B + symm_key[i*2 + 1];

	}
	return (uint64_t)((uint64_t)round_B << 32 | round_A);
}

int main(){
	uint64_t test = 0x123456789abcdef;


	uint64_t result = rc5_encrypt(test);
	volatile register int x5 __asm__("x18") = result >> 32;
	volatile register int x6 __asm__("x19") = result;

}
