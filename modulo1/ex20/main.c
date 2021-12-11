#include <stdio.h>
#include "find_word.h"
#include "find_all_words.h"

int main(){
	
	char one[1000] = {"era uma vez um pato que é pato e pato sempre sera, uma vez que pato e pato e pato"};
	char word1[5] = {"pato"};
	char *addr[100];
	
    find_all_words(one,word1,addr);
    
    int i=0;
    while(i<6){
		printf("%p - %s \n",addr[i], addr[i]);
		i++;
	}
	
	return 0;
}
