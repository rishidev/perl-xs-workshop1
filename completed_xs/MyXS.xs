#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <stdio.h>


#include "simple.h"

void print_string2(const char* s)
{
  printf("InXS:%s\n",s) ;
  print_clib(s) ;
}

void print_hello()
{
  printf( "Hello From XS!\n" ) ;
}

void print_string(char* s)
{
  printf("InXS:%s\n",s) ;
}

int treble(int x)
{
  x*=3 ;
  return x ;
}

int quadruple( int x ) ;

void tripquad_outlist( int x, int* times3, int* times4 )
{
  *times3 = x*3 ;
  *times4 = x*4 ;
}

MODULE = MyXS		PACKAGE = MyXS		

void
print_hello()

void
print_string(s)
  char* s


void
print_string2(s)
  char* s

int
treble( x )
  int x 

int
quadruple( x )
  int x
CODE:
  RETVAL = 4*x ;
OUTPUT:
  RETVAL


void
tripquad_outlist( x, OUTLIST times3, OUTLIST times4 )
       int x
       int times3 = NO_INIT
       int times4 = NO_INIT




