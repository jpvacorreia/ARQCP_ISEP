void populate( int *vec , int num, int limit){
	
	while (num>0){
		*vec = rand() % limit;
		vec++;
		num--;
	}
	
}
