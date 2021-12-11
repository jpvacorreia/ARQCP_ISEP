#include <stdio.h>
#include "asm.h"
short res2 = 0;
int main(void) {

	s1 = 0xaa;
	s2 = 0xbb;
	
	res2 = crossSumBytes();
	printf("cross sum short = %hu\n", res2);
	return 0;
}
