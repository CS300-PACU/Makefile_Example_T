 /****************************************************************************
 File name:		printFunc.c
 Author:			CS Dept
 Date:				9/21/2023
 Class:				CS 300
 Assignment:	Makefile examples
 Purpose:			demonstrate makefiles
 ****************************************************************************/

 #include "../include/printFunc.h"

 /****************************************************************************
  Function:			printCapLetters

  Description:	prints all the capital letters

  Parameters:		None

  Returned:			None
  ****************************************************************************/
void printCapLetters()
{
	char letter = 'A';
	const char ALPHA_END = 'Z';

	while ( ALPHA_END >= letter)
	{
		printf("%c ", letter);
		++letter;
	}
}


 /****************************************************************************
  Function:			printLowerLetters

  Description:	prints all the lowercase letters

  Parameters:		None

  Returned:			None
  ****************************************************************************/
void printLowerLetters()
{
	char letter = 'a';
	const char ALPHA_END = 'z';

	while ( ALPHA_END >= letter)
	{
		printf("%c ", letter);
		++letter;
	}
}
