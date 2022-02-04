UNAME := $(shell uname)
ifeq ($(UNAME), Linux)
	EXT = linux
else ifeq ($(UNAME), Darwin)
	EXT = darwin
else 
	EXT = win32.exe
endif

CC      = gcc
RM      = rm -f

default: Hello

Hello: Hello.c
	$(CC) -o Hello-$(EXT) Hello.c

clean:
	$(RM) Hello
