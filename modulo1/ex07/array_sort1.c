 void array_sort1(int *vec, int n){
    int i =0 , j=0, min_index=0; 
  
   
    while( i < n - 1) { 
  
        min_index = i; 
        j = i + 1;
        
        while( j < n){
            if (vec[j] < vec[min_index]) 
                min_index = j; 
            j++;     
        }
        int aux = vec[min_index];
        vec[min_index] = vec[i];
        vec[i] = aux;
        i++; 
    } 
		
 }
