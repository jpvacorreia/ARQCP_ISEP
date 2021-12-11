#include <stdio.h>
#include "asm.h"


int main(void) {
	char c[] ="string numero 1\n";
	char d[] ="string numero 1\n";
	char *a = c;
	char *b = d;
	int res=test_equal(a, b);
	printf("%i\n",res);

	return 0;
}
