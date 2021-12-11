#include <stdio.h>
#include "asm.h"
signed int A = 1;
signed int B = 1;
signed int C = 1;
signed int D = 0;
signed int res;
int main(void) {
	
	res = compute();
	printf("res = %d\n", res);
	return 0;
}