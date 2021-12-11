# ex05/Makefile 

prog_ex05: upper2.o  main.o 
	gcc -Wall upper2.o main.o -o prog_ex05  

upper2.o: upper2.c 
	gcc -g -Wall -c upper2.c -o upper2.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex05
	./prog_ex05
