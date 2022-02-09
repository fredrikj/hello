#include <stdio.h>
#ifdef _WIN32
#include <Windows.h>
#else
#include <unistd.h>
#endif

int main()
{
  int i;
  for (i=1; i<=10; i++) {
    sleep(1);
    printf("Progress %i\n",10*i);
  }
  return 0;
}
