#include <stdio.h>
#include "asm.h"
int i;
int main(void) {

	i = 2;
	
	printf("res = %hu\n", function());
	return 0;
}
