#include <stdio.h>
#include "asm.h"
signed char A = 0;
signed short B = 0;
signed int C = 0, D = 0;
signed long long res;
int main(void) {

	A = 0;
	B = -1;
	C = 0;
	D = 0;
	
	res = sum_and_subtract();
	printf("cross sum short = %lld\n", res);
	return 0;
}