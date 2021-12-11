#include <stdio.h>
#include "compress_shorts.h"

int main(){
	
	short array1[10] = {1,1,1,1,1,1,1,1,1,1};
	
	int size = (int) (sizeof(array1) / sizeof(short));
	
	int array2[size/2];
	
	short *pointer1= array1;
	
	int *pointer2=array2;
	
	compress_shorts(pointer1,size,pointer2);
	
	int i=0;
	
	while(i<size/2){
		printf("array[%d] = %d\n",i,*pointer2);
		pointer2++;
		i++;
	}
	
return 0;	
}
