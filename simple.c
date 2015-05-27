/**
   Simple functions to be callable by an external function.
 */
#include <stdio.h>

int print_clib(const char* s)
{
  printf("FROM THE C LIBRARY:%s\n",s) ;
  return ;
}


