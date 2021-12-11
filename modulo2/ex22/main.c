#include <stdio.h>
#include "asm.h"
#include "f.h"
#include "f2.h"
#include "f3.h"
#include "f4.h"
int i,j;
int main(void) {

	i=3;
	j=2;

	printf("LANGUAGE: FUNCTION = RESULT\n");
	printf("c: f = %hu\n", f(i,j));
	printf("a: f = %hu\n", fa());
	printf("c: f2 = %hu\n", f2(i,j));
	printf("a: f2 = %hu\n", fa2());
	printf("c: f3 = %hu\n", f3(i,j));
	printf("a: f3 = %hu\n", fa3());
	printf("c: f4 = %hu\n", f4(i,j));
	printf("a: f4 = %hu\n", fa4());
	return 0;
}
