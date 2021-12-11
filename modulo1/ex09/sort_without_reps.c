int sort_without_reps(int *src, int n, int *dest){
	
	int i =0 , j=0, min_index=0; 
  
    while( i < n - 1) { 
  
        min_index = i; 
        j = i + 1;
        
        while( j < n){
            if (src[j] < src[min_index]) 
                min_index = j; 
            j++;     
        }
        int aux = src[min_index];
        src[min_index] = src[i];
        src[i] = aux;
        i++; 
    }
    
    i = 0;
    j = 0;
    while (i < n){
		if (src[i] != src[i+1]){
			dest[j] = src[i];
			j++;
		}
		i++;
	}
	
	return j; 
}
