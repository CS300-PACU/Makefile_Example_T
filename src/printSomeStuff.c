/****************************************************************************
 File name:  	main.c
 Author:
 Date:
 Class:
 Assignment:
 Purpose:
 ****************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "../include/printFunc.h"

 /****************************************************************************
  Function:			main

  Description:	hello world!

  Parameters:		argc - the number of command line arguments
            		argv - the actual command line arguments

  Returned:	 		EXIT_SUCCESS
  ****************************************************************************/
int main (int argc, char* argv[]) {

	printCapLetters();
	printf("\n");
	printLowerLetters();
	printf("\n");
	
  return EXIT_SUCCESS;
}
