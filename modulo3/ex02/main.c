#include <stdio.h>
#include "asm.h"
//char s1[100] = {"frase de vs a testar com vs e bs"};
char s1[] = {"frase de vs a testar com vs e bs"};
char s2[sizeof(s1)];
char *ptr1;
char *ptr2;

int main(void) {
	
	ptr1 = s1;
	ptr2 = s2;
	
	
	int index = str_copy_porto();

	printf("index = %d\n", index);
	printf("size s1 = %d\n", sizeof(s1));
	printf("size s2 = %d\n", sizeof(s2));
	printf("s1 = %s\n", ptr1);
	printf("s2 = %s\n", ptr2);
	return 0;
}