void capitalize(char *str) {

		//Capitalize first letter only
		if (*str >= 97 && *str <= 122) {
			*str -= 32;
		}
		
		//Capitalize first letter after a space
		while (*str != '\0'){
		
			if (*str >= 97 && *str <= 122){	
				if(*(str - 1) == ' ') {
					*str -= 32;
				}
			}
		str++;
	}
}