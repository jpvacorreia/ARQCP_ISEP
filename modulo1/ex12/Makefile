# ex12/Makefile 

progEx12: capitalize.o  main.o 
	gcc -Wall capitalize.o main.o -o progEx12

capitalize.o: capitalize.c 
	gcc -g -Wall -c capitalize.c -o capitalize.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx12
	./progEx12
