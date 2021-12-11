# ex22/Makefile 

progEx22: f.o f2.o f3.o f4.o asm.o  main.o 
	gcc -Wall f.o f2.o f3.o f4.o asm.o main.o -o progEx22
f.o: f.c
	gcc -g -Wall -c f.c -o f.o 
f2.o: f2.c 
	gcc -g -Wall -c f2.c -o f2.o 
f3.o: f3.c
	gcc -g -Wall -c f3.c -o f3.o
f4.o: f4.c 
	gcc -g -Wall -c f4.c -o f4.o  
asm.o: asm.s 
	gcc -g -Wall -c asm.s -o asm.o 

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

run: progEx22
	./progEx22
