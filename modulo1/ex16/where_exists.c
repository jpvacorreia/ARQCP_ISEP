#include <stdio.h>

char* where_exists(char* str1, char* str2) {
	

	if (*str1 == '\0' || *str2 == '\0') {
		return NULL;
	}
	
	
	int boolean = 0;
	int size = 0;
	int i=0;
	int j=0;
	
	while (str1[i] != '\0'){
		size++;
		i++;
	}
	
	while (*str2 != '\0'){
		boolean=0;
		j=0;
		while (j<size){
			if (*(str2 + j) == *(str1 + j)){
				boolean++;
			}
			if (boolean == size){
				return str2;
				break;
			}
			j++;
		}
		str2++;
	}
	return NULL;
}