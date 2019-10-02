CC = gcc
CFLAGS = -O -Wall
LFLAGS = 

all: CASCII

CASCII: game_main.c libs/arrkeys.c libs/arrkeys.h libs/characters.c libs/characters.h libs/map_utils.c libs/map_utils.h libs/x_system.c libs/x_system.h
	$(CC) $(CFLAGS) -c -o libs/arrkeys.o libs/arrkeys.c
	$(CC) $(CLFAGS) -c -o game_main.o game_main.c
	$(CC) $(LFLAGS) -c -o libs/characters.o libs/characters.c
	$(CC) $(LFLAGS) -c -o libs/map_utils.o libs/map_utils.c
	$(CC) $(LFLAGS) -c -o libs/x_system.o libs/x_system.c
	$(CC) $(LFLAGS) -o CASCII game_main.o libs/arrkeys.o libs/characters.o libs/map_utils.o libs/x_system.o


clean:
	rm -f libs/arrkeys.o game_main.o libs/characters.o libs/map_utils.o libs/x_system CASCII