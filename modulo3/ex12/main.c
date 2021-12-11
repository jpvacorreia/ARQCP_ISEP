#include <stdio.h>
#include "asm.h"


short int *ptrvec;
int num;

int main(void){
	
	short int long_array[]={1, 2, 300, 4000, 5000, 6};
	num=6;
	ptrvec=long_array;

	int res=vec_zero();

	printf("Number of zeroed elements: %d\n", res);

	return 0;
}