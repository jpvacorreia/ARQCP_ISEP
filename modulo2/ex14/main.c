#include <stdio.h>
#include "asm.h"
int main(void) {

	base = 3;
	height = 8;
	
	printf("area = %hu\n", getArea());
	return 0;
}
