all: hello

hello: main.o hello.o
	gcc -o hello main.o hello.o

main.o: main.c hello.h
	gcc -o main.o main.c -c -W -Wall -ansi -pedantic

hello.o: hello.c hello.h
	gcc -o hello.o hello.c -c -W -Wall -ansi -pedantic

clean:
	rm -rf *.o *~ hello
