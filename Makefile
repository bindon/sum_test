CC=g++

all: sum_test

sum.o: sum.h sum.cpp
	$(CC) -c -o sum.o sum.cpp

main.o: sum.h main.cpp
	$(CC) -c -o main.o main.cpp

sum_test: main.o sum.o
	$(CC) -o sum_test main.o sum.o

clean:
	@rm -f *.o
	@rm -f sum_test
