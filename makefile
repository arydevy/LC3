CC=gcc
C-FLAGS=-O3

all: clean lumos-16

lumos-16: src/main.c
	mkdir bin
	${CC} ${C-FLAGS} $^ -o bin/vm

run:
	./bin/vm

clean:
	rm -rf bin
