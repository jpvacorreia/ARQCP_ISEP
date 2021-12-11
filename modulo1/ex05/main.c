#include <stdio.h>
#include "upper2.h"

int main(){

	char str[100] = {};
	
		printf("Type a string = ");
		scanf("%[^\n]s", str); //scan da string
		upper2(str);
		printf("\nnew str = %s \n", str);

	
	return 0;
}
