#include <stdio.h>
#include "asm.h"
//char s1[100] = {"frase de vs a testar com vs e bs"};
int array[] = {0,1,2,3,4,5,6,7,8,9,10};
int num = sizeof(array)/4;
int *ptrvec;

int main(void) {
	
	ptrvec = array;
	
	vec_add_one();
	
	int i = 0;
	while (i < num) {
	printf("array[%d] = %d\n", i, array[i]);	
	i++;
	}
	
	return 0;
}