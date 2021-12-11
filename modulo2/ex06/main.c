#include <stdio.h>
#include "asm.h"
short res;
int main(void) {
	byte1 = 0xaa;
	byte2 = 0xbb;
	res = concatBytes();
	printf("result = %d:0x%x\n", res,res);
	return 0;
}
