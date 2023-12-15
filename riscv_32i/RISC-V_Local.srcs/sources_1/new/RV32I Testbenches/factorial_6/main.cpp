#include <iostream>
int main(){
	int a = 6;
	int fact = 1;
	for(int i = 1; i < a; i++){
		fact *= i;
	}
    std::cout << fact << std::endl;
	//volatile register int p __asm__("x11") = fact;
	//volatile register int q __asm__("x12") = 64;
}
