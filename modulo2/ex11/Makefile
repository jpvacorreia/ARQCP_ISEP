# ex11/Makefile 

progEx11: asm.o  main.o 
	gcc -Wall asm.o main.o -o progEx11 

asm.o: asm.s 
	gcc -g -Wall -c asm.s -o asm.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx11
	./progEx11