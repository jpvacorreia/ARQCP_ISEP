# ex14/Makefile/Makefile 

progEx14: frequencies.o  main.o 
	gcc -Wall frequencies.o main.o -o progEx14

frequencies.o: frequencies.c 
	gcc -g -Wall -c frequencies.c -o frequencies.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx14
	./progEx14
