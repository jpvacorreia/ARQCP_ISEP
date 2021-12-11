# ex16/Makefile/Makefile 

progEx16: where_exists.o  main.o 
	gcc -Wall where_exists.o main.o -o progEx16

where_exists.o: where_exists.c 
	gcc -g -Wall -c where_exists.c -o where_exists.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx16
	./progEx16
