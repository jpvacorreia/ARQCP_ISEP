# ex02/Makefile 

progEx02: copy_vec.o  main.o 
	gcc -Wall copy_vec.o main.o -o progEx02 

copy_vec.o: copy_vec.c 
	gcc -g -Wall -c copy_vec.c -o copy_vec.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.0

run: progEx02
	./progEx02
