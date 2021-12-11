#include <stdio.h>
#include "odd_sum.h"

int main(){
	printf("Enter the size of the array\n");

	int n;
	printf("n= ");
	scanf("%d", &n); //scan do tamanho do array
	printf("Now the numbers in the array\n");

	int array[n+1];
	array[0] = n;
	int index=1;

	while (index<n+1){
		printf("\narray[%d] = ",index);
		scanf("%d",&array[index]); //scan dos elementos do array
		index++;
	}

	int *arrayPtr = 0;

	arrayPtr = array;

	int sum = odd_sum(arrayPtr);
	
	index = 0;
	
	printf("-------Sum of odd numbers in the Array--------\n");
	
		printf("sum = %d\n",sum); //print da soma dos números impares

	return 0;
}