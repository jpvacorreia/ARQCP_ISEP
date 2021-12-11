#include <stdio.h>
#include "asm.h"
 signed int num;
int main(void) {

	num = 190;
	
	printf("res = %hu\n",  check_num());
	return 0;
}
