OBJS	= main.o msg.o
SOURCE	= src/main.c src/msg.c
HEADER	= src/msg.h
OUT	= out/out
CC	 = gcc
FLAGS	 = -g -c -Wall
LFLAGS	 = -lws2_32

all: $(OBJS)
	mkdir out
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

main.o: src/main.c
	$(CC) $(FLAGS) src/main.c 

msg.o: src/msg.c
	$(CC) $(FLAGS) src/msg.c 


clean:
	rm -f $(OBJS) $(OUT)
	rmdir out

run: $(OUT)
	./$(OUT)