#include <stdio.h>
#include "sort_without_reps.h"

int main(){
	
		printf("Enter the size of the array\n");

int n;
printf("n= ");
scanf("%d", &n); //scan do tamanho do array
printf("Now the numbers in the array\n");

int src[n];
int index=0;



while (index<n){
	printf("\narray[%d] = ",index);
	scanf("%d",&src[index]); //scan dos elementos do array
	index++;
}

int *srcPtr = 0;

srcPtr = src;

int dest[n];

int *destPtr = 0;

destPtr = dest;

int size = sort_without_reps(srcPtr,n,destPtr);
	
	index = 0;
	
	printf("-----------------Sorted Array------------------\n");
	
	while (index<size){
		printf("\narray[%d] = ",index);
		printf("%d\n",dest[index]); //print dos elementos do array
		index++;
	}
	
	printf("\nsize = %d\n",size);
	
	return 0;
}
