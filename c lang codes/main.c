
int main(){
<<<<<<< Updated upstream
	int a = 6;
	int fact = 1;
	for(int i = 1; i <= a; i++){
		fact *= i;
	}
	volatile register int p __asm__("x11") = fact;
	volatile register int q __asm__("x12") = 64;
}
=======
	unsigned char k[]=  "0123456789ABCBJM";
	RC5_SETUP(*k);
	unsigned char encrypt[16] = "testing";

	unsigned char test[16],decrypt[16];

	RC5_ENCRYPT(encrypt,test);
	RC5_DECRYPT(test,decrypt);
	int same = 1;
	unsigned char res = 0xeeeeeeee;
   	for (int i=b-1; i!=-1; i--) if(encrypt[i]!=decrypt[i]) { res = 0xffffffff; same = 0; }

	volatile register int x5 __asm__("x11") = res;

	same = x5;


}
>>>>>>> Stashed changes
