# ex09/Makefile 

prog_ex09: sort_without_reps.o  main.o 
	gcc -Wall sort_without_reps.o main.o -o prog_ex09

sort_without_reps.o: sort_without_reps.c 
	gcc -g -Wall -c sort_without_reps.c -o sort_without_reps.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex09
	./prog_ex09
