int where_is (char *str, char c, int *p){
	
	int counter = 0;
	int index = 0;
	
	while (*str != '\0'){
		if (*str == c) {
			p[counter] = index;
			counter++;
		}
		index++;
		str++;
	}
	
	return counter;
	
}
