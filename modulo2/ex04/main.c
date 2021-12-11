#include <stdio.h>
#include "asm.h"
int op1=0, op2=0,res=0;
int main(void) {
	printf("Valor op4:");
	scanf("%d",&op4);
	printf("Valor op3:");
	scanf("%d",&op3);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op1:");
	scanf("%d",&op1);
	res = sum_v3();
	printf("op4 + op3 - op2 + op1 = %d:0x%x\n", res,res);
	return 0;
}
