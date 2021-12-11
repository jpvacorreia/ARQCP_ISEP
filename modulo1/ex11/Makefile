# ex11/Makefile 

prog_ex11: palindrome.o  main.o 
	gcc -Wall palindrome.o main.o -o prog_ex11

palindrome.o: palindrome.c 
	gcc -g -Wall -c palindrome.c -o palindrome.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: prog_ex11
	./prog_ex11
