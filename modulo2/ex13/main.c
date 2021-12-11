#include <stdio.h>
#include "asm.h"
int base;
int height;
int area;
int main(void) {

	base = 2;
	height = 2;
	
	area = getArea();
	printf("Triangle area = %d\n", area);
	return 0;
}