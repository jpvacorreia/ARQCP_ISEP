void compress_shorts2(short* shorts, int n_shorts, int* integers){
	
	int i=0;
	
	while(i<n_shorts){
		*integers = (shorts[i+1] <<16| shorts[i]);
		integers++;
		i=i+2;
	}
	
}
