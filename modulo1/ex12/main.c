#include <stdio.h>
#include "capitalize.h"

int main(){
	printf("Enter the string to be capitalized\n");
	
	char str[1000];
	printf("String: ");
	scanf("%[^\n]s", str); //scan da string
	
	capitalize(str);
	
	printf("Capitalized String\n");
	printf("String: %s\n", str);
	
	return 0;
}