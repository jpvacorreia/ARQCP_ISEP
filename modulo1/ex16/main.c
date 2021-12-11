#include <stdio.h>
#include "where_exists.h"

int main() {
	
	char string1[100] = "xpto";
	char string2[100] = "esta frase é xpto mas também é ypto e xpto";
	
	char string3[15] = "am";

	
	printf("%s\n %s\n", string3, string2);
	
	char *exists = where_exists(string3, string2);
	
	printf("result:");
	printf("%p\n", exists);
	printf("%s\n", exists);
	
	
	return 0;
}