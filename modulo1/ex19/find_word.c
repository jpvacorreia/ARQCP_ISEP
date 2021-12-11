#include <stdio.h>
char* find_word(char* str, char* word, char* initial_addr){
	
	if (*str == '\0' || *word == '\0'){
		return NULL;
	}
	
	int boolean = 0;
	int size = 0;
	int i=0;
	int j=0;

	while (word[i] != '\0'){
		size++;
		i++;
	}
	
	while (*initial_addr != '\0'){
		boolean=0;
		j=0;
		while (j<size){
			if (*(initial_addr + j) == *(word + j) || *(initial_addr + j) == *(word + j) + 32 || *(initial_addr + j) == *(word + j) - 32){
				boolean++;
			}
			if (boolean == size){
				return initial_addr;
				break;
			}
			j++;
		}
		str++;
		initial_addr++;
	}
	return NULL;
}
