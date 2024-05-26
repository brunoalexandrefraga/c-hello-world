all: hello

hello: main.o hello.o | bin
	gcc -o bin/hello bin/main.o bin/hello.o

main.o: main.c hello.h | bin
	gcc -o bin/main.o main.c -c -W -Wall -ansi -pedantic

hello.o: hello.c hello.h | bin
	gcc -o bin/hello.o hello.c -c -W -Wall -ansi -pedantic

bin:
	mkdir -p bin/

clean:
	rm -rf *.o *~ hello
