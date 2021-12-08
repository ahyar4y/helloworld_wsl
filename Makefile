all: clean helloworld.o helloworld

helloworld: helloworld.o
	cc helloworld.o -o helloworld

helloworld.o: helloworld.c
	cc -std=c17 -Werror -o helloworld.o -c helloworld.c

clean:
	rm -f helloworld.o helloworld