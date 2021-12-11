# ex06/Makefile 

progEx06: power_ref.o  main.o 
	gcc -Wall power_ref.o main.o -o progEx06  

power_ref.o: power_ref.c 
	gcc -g -Wall -c power_ref.c -o power_ref.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.0

run: progEx06
	./progEx06
