#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

int main(int argc, char *argv[])
{
  if (argc>1 && strcmp(argv[1], "error") == 0) {
    fprintf(stderr, "I failed\n");
    exit(1);
  }
  int i;
  for (i=1; i<=10; i++) {
    sleep(1);
    printf("%i\n",10*i);
    fflush(stdout);
  }
  return 0;
}
