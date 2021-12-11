# ex04/Makefile 

progEx04: upper1.o  main.o 
	gcc -Wall upper1.o main.o -o progEx04 

upper1.o: power_ref.c 
	gcc -g -Wall -c upper1.c -o upper1.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.0

run: progEx04
	./progEx04
