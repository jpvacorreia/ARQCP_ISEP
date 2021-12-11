#include <stdio.h>
#include "power_ref.h"

int main() {
		int initial = 0;
		int power = 0;
		
		printf("Type a number to be powered = ");
		scanf("%d", &initial);
		printf("Type a number to be thee power = ");
		scanf("%d", &power);

		power_ref(&initial, power);
		
		printf("\n powered value = %d \n", initial);
	
	return 0;	
}