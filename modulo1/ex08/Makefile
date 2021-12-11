# ex08/Makefile 

progEx08: array_sort2.o  main.o 
	gcc -Wall array_sort2.o main.o -o progEx08 

array_sort2.o: array_sort2.c 
	gcc -g -Wall -c array_sort2.c -o array_sort2.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx08
	./progEx08
