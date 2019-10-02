SOURCES = $(wildcard libs/*.c) game_main.c
OBJECTS=$(SOURCES:.c=.o)
COMPILER_FLAGS = -c -flto
EXECUTABLE = casciigame

CC = gcc
INCLUDE_PATHS =
LIBRARY_PATHS =
LINKER_FLAGS = -lncurses

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LIBRARY_PATHS) $(LINKER_FLAGS) -o $@
.c.o:
	$(CC) $(INCLUDE_PATHS) $(COMPILER_FLAGS) $< -o $@

clean:
	@rm src/*.o
	@rm *.o
