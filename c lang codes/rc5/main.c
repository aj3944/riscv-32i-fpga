// #include <stdio.h>


long long int rom[26] = {
      0,
      0,
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




long long int rc5_en(long long int input){
  long long int A,B;
  A = (input >> 32) & 0xFFFFFFFF;
  B = input & 0xFFFFFFFF;

  long int ab_xor = 0 ,a_rot = 0 ,ba_xor = 0 ,b_rot = 0;

  for(int i = 1; i < 13; i++){
    ab_xor = A ^ B;
    // printf("ab_xor %llx\n",ab_xor);

    a_rot = ( (ab_xor << ( B & 0x1F)) | (ab_xor >> (32 - (B & 0x1F)))) & 0xFFFFFFFF;
    // printf("a_rot %llx\n",a_rot);
    A = (a_rot + rom[i*2 ]) & 0xFFFFFFFF;
    // printf("A %llx\n",A);

    ba_xor = B ^ A;
     // printf("ba_xor %llx\n",ba_xor);
    b_rot = ( (ba_xor << (A &0x1F)) | (ba_xor >> (32 - (A & 0x1F))))& 0xFFFFFFFF;
    // printf("b_rot %llx\n",b_rot);
    B = (b_rot + rom[i*2 + 1] ) & 0xFFFFFFFF;
     // printf("B %llx\n",B);
 } 

  return A << 32 | B;
}



long long int rc5_de(long long int input){
  long long int A,B;
  A = (input >> 32) & 0xFFFFFFFF;
  B = input & 0xFFFFFFFF;
  long int ab_xor = 0 ,a_rot = 0 ,ba_xor = 0 ,b_rot = 0;
  for(int i = 12; i > 0; i--){
    b_rot = (B - rom[i*2 + 1] ) & 0xFFFFFFFF;
    
    ba_xor = ( (b_rot >> (A &0x1F)) | (b_rot << (32 - (A & 0x1F))))& 0xFFFFFFFF;
    
    B = (ba_xor ^ A)& 0xFFFFFFFF;



    a_rot = (A - rom[i*2 ]) & 0xFFFFFFFF;

    ab_xor = ( (a_rot >> ( B & 0x1F)) | (a_rot << (32 - (B & 0x1F)))) & 0xFFFFFFFF;

    A = (B ^ ab_xor)& 0xFFFFFFFF;

 } 

  return A << 32 | B;  
}


int main(){

  long long int a = 0x0123456789abcdef;

  long long int b = rc5_en(a);
  long long int c = rc5_de(b);

  if(a == c){
    volatile register int x5 __asm__("x11") = 0xff; 
    // printf("works\n");   
  }
  else{
    volatile register int x5 __asm__("x11") = 0xaa;    
    // printf("does not works\n");   
  }
  return 0;
}