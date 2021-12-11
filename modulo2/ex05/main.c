#include <stdio.h>
#include "asm.h"
int op1=0, op2 = 0, res2 = 0;
short s = 0;
int main(void) {
	printf("Valor short:");
	scanf("%hu",&s);
	res2 = swapBytes();
	printf("swaped short = %hu\n", res2);
	return 0;
}