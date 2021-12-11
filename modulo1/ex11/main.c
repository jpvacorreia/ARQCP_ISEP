#include <stdio.h>
#include "palindrome.h"

int main(){
	
	char str1[19] = {"Never odd or even"};
	int str1_is = palindrome(str1);
	printf("str1 = %d\n", str1_is);
	
	
	return 0;
}
