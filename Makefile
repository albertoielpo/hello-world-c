# Makefile
# Automatic variables
# ----------------------
# $@	The target name	hello
# $^	All prerequisites, space-separated	hello.c
# $<	The first prerequisite only
# $*	The stem (filename without extension, used in pattern rules)
#

CC      = gcc
CFLAGS  = -Wextra -Wall -Wpedantic -O2 -g -std=c99
# CFLAGS  = -static -Wextra -Wall -Wpedantic -O2 -g -std=c99
TARGET  = hello
SRCS    = hello.c

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o
