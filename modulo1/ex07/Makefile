# ex07/Makefile 

prog_ex07: array_sort1.o  main.o 
	gcc -Wall array_sort1.o main.o -o prog_ex07 

array_sort1.o: array_sort1.c 
	gcc -g -Wall -c array_sort1.c -o array_sort1.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex07
	./prog_ex07
