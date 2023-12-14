
int fib(int a){
	if((a <= 1))
		return 1;
	else return fib(a - 2) + fib(a-1);
}
int main(){
	int a = 30;	
	// int x = 66666666;
	int c = fib(a);
	volatile register int p __asm__("x7") = a;
	volatile register int q __asm__("x8") = 0;
	q = c;
	return c;
}
