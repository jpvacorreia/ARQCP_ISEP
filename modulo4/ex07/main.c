#include <stdio.h>
#include "asm.h"


int main(void) {
	short vector[] ={};
	short *vec = vector;
	int n = sizeof(vector)/2;

	int res = count_even(vec, n);
	printf("count even: %d\n",res);

	return 0;
}
