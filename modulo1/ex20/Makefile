# ex20/Makefile 

prog_ex20: find_word.o find_all_words.o main.o 
	gcc -Wall find_word.o find_all_words.o main.o -o prog_ex20

find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o 

find_all_words.o: find_all_words.c
	gcc -g -Wall -c find_all_words.c -o find_all_words.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex20
	./prog_ex20