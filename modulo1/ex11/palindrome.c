#include <stdio.h>

int palindrome(char *str){
	char newStr[100] = {'\0'};
	
	if (*str == '\0'){
		return 0;
	}
	
	int i=0,j=0;
	//Never odd or even
	
	while (*str != '\0'){
		if (*str!= ' ' && *str != ',' && *str!= '.' && *str != '?' && *str != '!' && *str != ':' && *str != ';'){
			newStr[j] = *str;
			j++;
		}
		str++;
	}
	
	int size= 0;
	while (newStr[size] != '\0'){
		size++;
	}
		
	 
    int counter = 0;
    
    for(i=0;i<=(size/2);i++)  
    { 
    	if(newStr[i]==newStr[size-i-1] || newStr[i]==(newStr[size-i-1]+32) || newStr[i]==(newStr[size-i-1]-32))
			counter++;
 
 	}
 	
 	if(counter==i)
 	    return 1;
    else
        return 0;
 }
	
