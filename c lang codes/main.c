



int main(){
	int a = 30;	
	int b = 55;	
	// volatile register int p __asm__("x12") = a;
	// volatile register int q1 __asm__("x13") = b;
	// volatile register int q2 __asm__("x14") = b;
	// volatile register int q3 __asm__("x15") = -4;
	// volatile register int q4 __asm__("x16") = 2048;
	// volatile register int q5 __asm__("x17") = 512;
	// volatile register int q6 __asm__("x18") = 122;
	// volatile register int q7 __asm__("x19") = 1024;
	// volatile register int x3 __asm__("x16") = q1 + q3 + q4;
	// volatile register int x4 __asm__("x17") = q2 + q6 + q7;
	volatile register int x5 __asm__("x18") = q1 + p + q5;
	return 0;
}
