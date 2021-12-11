#include <stdio.h>
#include "asm.h"
int op1 = 0, op2 = 0;
int main(void) {

	op1 = 386;
	op2 = 400;
	
	printf("sum 2 ints= %hu\n", sum2ints());
	return 0;
}
