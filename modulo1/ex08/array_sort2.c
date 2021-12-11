void array_sort2(int *vec, int n) {

    int i =0 , j=0; 
  
    while( i < n - 1) { 
  
        j = i + 1;
        
        while( j < n){
			if (*(vec + j) < *(vec + i)) {
				int aux = *(vec + i);
				*(vec + i) = *(vec + j);
				*(vec + j) = aux;     
			}
		j++;
		}
	i++; 
	}
}