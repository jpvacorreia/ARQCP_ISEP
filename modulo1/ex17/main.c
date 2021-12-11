#include <stdio.h>
#include "swap.h"

int main() {
	
	int size =0;
	printf("\nsize = ");
	scanf("%d",&size);
	int sizeClone = size-1;
	int vec1[size-1];
	int vec2[size-1];
	printf("\narray1 -- array2\n");
	
	while (sizeClone>=0){
		vec1[sizeClone]=rand() % 10;
		vec2[sizeClone]=rand() % 50;
		printf("%d   --   %d\n",vec1[sizeClone],vec2[sizeClone]);
		sizeClone--;
	}
	
	swap(&vec1,&vec2,size);
	
	sizeClone=size-1;
	
	printf("\narray1 -- array2\n");
	while (sizeClone>=0){
		printf("%d   --   %d\n",vec1[sizeClone],vec2[sizeClone]);
		sizeClone--;
	}
	
	return 0;
}
	
