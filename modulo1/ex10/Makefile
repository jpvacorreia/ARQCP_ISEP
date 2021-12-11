# ex10/Makefile 

progEx10: odd_sum.o  main.o 
	gcc -Wall odd_sum.o main.o -o progEx10 

odd_sum.o: odd_sum.c 
	gcc -g -Wall -c odd_sum.c -o odd_sum.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx10
	./progEx10
