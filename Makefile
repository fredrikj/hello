UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
	EXT = 
else ifeq ($(UNAME), Darwin)
	EXT = 
else 
	EXT = .exe
endif

CC      = gcc
CFLAGS  =
RM      = rm -f

default: Hello

Hello: Hello.c
	$(CC) $(CFLAGS) -o Hello$(EXT) Hello.c

clean:
	$(RM) Hello
