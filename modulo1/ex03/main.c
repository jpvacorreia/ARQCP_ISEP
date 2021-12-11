#include <stdio.h>
#include "sum_even.h"

int main(){

printf("Enter the size of the array\n");

int soma=0;
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

soma = sum_even(arrayPtr,n);

printf("soma=%d\n",soma);

return 0;

}
