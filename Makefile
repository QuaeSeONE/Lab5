./bin/main: ./obj/main.o ./obj/sqr.o
	gcc ./obj/main.o ./obj/sqr.o -o ./bin/main -lm -Wall

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/sqr.o: ./src/sqr.c
	gcc -c ./src/sqr.c -o ./obj/sqr.o -Wall

.PHONY: clean
clean:
	rm -rf ./obj/* ./bin/*

