# ex13/Makefile 

progEx13: asm.o  main.o 
	gcc -Wall asm.o main.o -o progEx13 

asm.o: asm.s 
	gcc -g -Wall -c asm.s -o asm.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx13
	./progEx13