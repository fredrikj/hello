CC      = gcc
CFLAGS  =
RM      = rm -f

default: Hello

Hello: Hello.c
	$(CC) $(CFLAGS) -o Hello Hello.c

clean:
	$(RM) Hello
