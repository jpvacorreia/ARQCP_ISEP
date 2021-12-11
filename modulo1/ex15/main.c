#include <stdio.h>
#include "check.h"
#include "inc_nsets.h"
#include "populate.h"

int sets=0;

int main(){
	
	//NOTE: If you'd like to check the created array and the sets checked with the "boolean" value atributed to them, uncomment the commented code
	
	
	
	int size = 0;
	int limit = 0;
	int checker = 0;
	printf("\nSize = ");
	scanf("%d",&size);
	printf("\nLimit = ");
	scanf("%d",&limit);
	int vec[size-1];
	int *vecPtr = 0;
	vecPtr = vec;
	populate(vecPtr,size,limit);
	int i=0;
	/*while(i<size){
		printf("%d, ",vec[i]);
		i++;
	}*/
	
	i =0;
	while (size>2) {
		checker = check(*vecPtr,*(vecPtr + 1),*(vecPtr + 2));
		/*printf("\n -- %d , %d , %d = %d",vec[i],vec[i+1],vec[i+2],checker);*/
		if (checker == 1){
			inc_nsets();
		}
		vecPtr++;
		size--;
		i++;
	}
	
	printf("\nsets = %d\n",sets);
	
	
	return 0;
}
