#include <stdio.h>
#include "asm.h"
signed int A = 10;
signed int B = -2;
signed int C = 5;
signed int D = -3;
signed int res;
int main(void) {
	
	res = compute();
	printf("res = %d\n", res);
	return 0;
}