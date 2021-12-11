# ex18/Makefile 

prog_ex18: compress_shorts.o main.o 
	gcc -Wall compress_shorts.o main.o -o prog_ex18

compress_shorts.o: compress_shorts.c
	gcc -g -Wall -c compress_shorts.c -o compress_shorts.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex18
	./prog_ex18