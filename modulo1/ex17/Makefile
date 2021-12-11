# ex17/Makefile 

prog_ex17: swap.o main.o 
	gcc -Wall swap.o main.o -o prog_ex17

swap.o: swap.c
	gcc -g -Wall -c swap.c -o swap.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex17
	./prog_ex17