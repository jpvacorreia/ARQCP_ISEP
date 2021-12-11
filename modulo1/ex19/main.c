#include <stdio.h>
#include "find_word.h"

int main(){
	
	char one[19] = {"era uma vez um pato"};
	char word1[4] = {"pato"};
	char *addr = &one[5];
		
	addr = find_word(one,word1,addr);
	
	return 0;
}
