#include <stdio.h>
#include "upper1.h"

int main() {
		char str[] = {'\0'};
	
		printf("Type a string (without space in between) = ");
		scanf("%s", str);
		upper1(str);
		printf("\nnew str = %s \n", str);

	
	return 0;	
}