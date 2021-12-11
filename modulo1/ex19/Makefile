# ex19/Makefile 

prog_ex19: find_word.o main.o 
	gcc -Wall find_word.o main.o -o prog_ex19

find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex19
	./prog_ex19