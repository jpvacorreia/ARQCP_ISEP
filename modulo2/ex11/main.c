#include <stdio.h>
#include "asm.h"
signed char A = 0;
signed short B = 0;
signed int C = 0, D = 0;
char res;
signed int op1;
signed int op2;
int main(void) {

	op1 = 0;
	op2 = 1;
	
	res = test_flags();
	printf("test_flags = %d\n", res);
	return 0;
}