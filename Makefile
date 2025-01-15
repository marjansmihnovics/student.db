CC = gcc
BIN = student_db
SOURCES = file.c inout.c main.c
OBJECTS = $(sources:.c=.o)

default: $(BIN)

$(BIN) : common.h $(OBJECTS)
  $(CC) $(OBJECTS) -o $@

clean:
  rm$(BIN) $(OBJECTS)

help:
  @echo "PLease run make $(BIN) or just make"

.PHONY: help clean default
