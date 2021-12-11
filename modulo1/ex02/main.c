#include <stdio.h>
#include "copy_vec.h"

int main() {
	
	int vec1[] = {10, 11, 12, 13};
	int vec2[] = {0,0,0,0};
	int n = 3; // copiar apenas 3 números dos 4 inicialmente introduzidos no vetor
	
	copy_vec(vec1, vec2, n);
	
	
	printf("Values of: vec1[0]=%d ,vec1[1]=%d, vec1[2]=%d, vec1[3]=%d \n", vec1[0], vec1[1],vec1[2],vec1[3]);
	printf("Values of: vec2[0]=%d ,vec2[1]=%d, vec2[2]=%d, vec2[3]=%d \n", vec2[0], vec2[1],vec2[2],vec2[3]);

	return 0;
}