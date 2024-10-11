#include <stdio.h>

#include "main.h"

int main(void)
{
  say_hello();
  getchar();

  return 0;
}

void say_hello(void) { printf("Hello, World!\n"); }
