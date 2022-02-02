UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
	EXT = Linux
else ifeq ($(UNAME), Darwin)
	EXT = Darwin
else 
	EXT = Windows.exe
endif

CC      = gcc
RM      = rm -f

default: Hello

Hello: Hello.c
	$(CC) -o Hello$(EXT) Hello.c

clean:
	$(RM) Hello
