#include <stdio.h>
#include "asm.h"
signed int num;
int main(void) {

	num = -1;
	
	printf("res = %hu\n", steps());
	return 0;
}
