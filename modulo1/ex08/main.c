#include <stdio.h>
#include "array_sort2.h"

int main(){
	
	printf("Enter the size of the array\n");

int n;
printf("n= ");
scanf("%d", &n); //scan do tamanho do array
printf("Now the numbers in the array\n");

int array[n];
int index=0;



while (index<n){
	printf("\narray[%d] = ",index);
	scanf("%d",&array[index]); //scan dos elementos do array
	index++;
}

int *arrayPtr = 0;

arrayPtr = array;

array_sort2(arrayPtr,n);
	
	index = 0;
	
	printf("-----------------Sorted Array------------------\n");
	
	while (index<n){
		printf("\narray[%d] = ",index);
		printf("%d\n",array[index]); //print dos elementos do array
		index++;
	}
	return 0;
}
	