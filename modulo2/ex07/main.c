#include <stdio.h>
#include "asm.h"
short s1 = 0, s2 = 0, res2 = 0;
short s = 0;
int main(void) {

	s1 = 0xaa;
	s2 = 0xbb;
	
	res2 = crossSumBytes();
	printf("cross sum short = %hu\n", res2);
	return 0;
}