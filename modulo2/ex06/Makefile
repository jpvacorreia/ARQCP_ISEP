# ex06/Makefile 

progEx06: asm.o  main.o
	gcc -Wall asm.o main.o -o progEx06

asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx06
	./progEx06