// #include <time.h>
// #include <stdlib.h>


int fib(int a , int b){


	if((a <= 1) | (b <= 1))
		return a + b;
	else return a + fib(b-1,a);

}
int main(){
	int a = 1000;
	int b = 20;
	int c = fib(a,b);	
   // time_t t;

   // srand((unsigned) time(&t));

   int x = 66666666;
   
	return c;
}
