#include <stdio.h>
#include "frequencies.h"

int main() {
	
	float grades[] = {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67, 16.23, 18.75};
	int n = sizeof(grades)/4;
	int freq[21];
	
	frequencies(grades, n, freq);
	
	int size = 21;
	int i = 0;
	
	printf("{");
	while (size > 0) {
		printf("%d, ", freq[i]);
		i++;
		size--;
	}
	printf("}\n");
	return 0;
}