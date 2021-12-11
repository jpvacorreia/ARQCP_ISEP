#include <stdio.h>
#include "asm.h"
int A = 0, B = 0;
int main(void) {

	A = 8;
	B = 6;
	
	printf("rest = %hu\n", isMultiple());
	return 0;
}
