# ex08/Makefile 

ProgEx08: main.o test_even.o vec_sum_even.o
	gcc -Wall -g main.o test_even.o vec_sum_even.o -o ProgEx08

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
test_even.o: test_even.s 
	gcc -g -Wall -c test_even.s -o test_even.o 
	
vec_sum_even.o: vec_sum_even.s 
	gcc -g -Wall -c vec_sum_even.s -o vec_sum_even.o 



run: ProgEx08
	./ProgEx08