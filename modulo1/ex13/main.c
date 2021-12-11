#include <stdio.h>
#include "where_is.h"

int main(){
	
	char str[] = {"acebrjcpqecawc"};
	int chars[sizeof(str)];
	
	int *arrayPointer = 0;
	
	arrayPointer = chars;
	
	int counter = where_is(str,'c',arrayPointer);
	
	printf("\n = %d\n", counter);
	
	int i = 0;
	while (i < counter){
		printf("index with char = %d", chars[i]);
		i++;
	}
	return 0;
}
