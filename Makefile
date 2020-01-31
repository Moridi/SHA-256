all: sha256.o main.o
	g++ sha256.o main.o -o sha256_example.out

sha256.o: sha256.cpp sha256.h
	g++ -c sha256.cpp

main.o:
	g++ -c main.cpp

clean:
	rm -rf *.o *.out