#include <stdio.h>
#include "asm.h"
char *ptr1;
char str[13] = {"100010010010"};
int main() {
	
	ptr1 = str;
	printf("res = %hu\n",zero_count());
	return 0;
}
