void compress_shorts(short* shorts, int n_shorts, int* integers){
	
	unsigned short *ptrInt = (unsigned short*) integers;
	unsigned int i = 0;
	
	while(i<n_shorts){
		*ptrInt = *shorts;
		
		shorts++;
		ptrInt++;
		i++;
		
	}
	
	
//unsigned int x = 10;
//unsigned *char ptr = (unsigned char*) &x;
//unsigned *short ptr = (unsigned short*) &x;

//ptr+1  // vai buscar o valor 
//y = *ptr

}
