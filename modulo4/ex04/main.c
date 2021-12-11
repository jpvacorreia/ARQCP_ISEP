#include <stdio.h>
#include "asm.h"


int main(void) {

	int num1=110;
	int num2=5;
	int num4;
	int *smaller=&num4;

	int res=sum_smaller(num1,num2, smaller);

	printf("Sum of %d and %d, is %d and the number in smaller is %d\n", num1,num2,res, *smaller);

	return 0;
}
