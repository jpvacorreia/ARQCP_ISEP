#include <stdio.h>
#include "find_word.h"
void find_all_words(char* str, char* word, char** addrs){
	
	char *in_addr = str;
	char *addrAux = NULL;
	
	
	int size = sizeof(word);
	while(*in_addr != '\0'){
		
		addrAux = find_word(str,word,in_addr);		
		
		*addrs = addrAux;
		in_addr = addrAux + size;
		addrs++;
	}
	
}
