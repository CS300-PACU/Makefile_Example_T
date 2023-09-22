#############################################################################
# File name:  Makefile
# Author:     chadd williams
# Date:       Sept 21, 2023
# Class:      CS360
# Assignment: Makefile Examples
# Purpose:    demonstrate the components of a Makefile
#############################################################################

# Set some variables that make our life easier

# Compiler
CC=gcc

# Flags for the compiler
CFLAGS=-g -Wall

# -g  include debug symbols in the executable so that the code can be
# 		run through the debugger effectively
#
# -Wall	show many warnings from gcc

# Options for VALGRIND
# NOTE: the following line is broken across two lines
# the slash (\) at the end is the continuation character
# the slash must not be followed by any character except a newline!
VALGRIND_FLAGS=-v --leak-check=yes --track-origins=yes --leak-check=full\
 --show-leak-kinds=all

# Options for ENSCRIPT
ENSCRIPT_FLAGS=-C -T 2 -p - -M Letter -Ec --color -fCourier8

.PHONY: clean

# TARGETS is used below to hold the name of all the executables
# built by this Makefile.  This allows us to add the executable name
# in one place and have both all and clean updated. 

TARGETS=bin/main

all: bin ${TARGETS}

# Make the bin directory if it does not exist
bin:
	mkdir -p bin

bin/main: bin/main.o
	${CC} -o bin/main bin/main.o ${CFLAGS}

bin/main.o: src/main.c
	${CC}  -o bin/main.o -c src/main.c ${CFLAGS}

# remove all the GENERATED files
clean:
	rm -rf bin/*.o ${TARGETS} bin/*.pdf

printAll:
	enscript ${ENSCRIPT_FLAGS} src/main.c  | ps2pdf - bin/main.pdf

valgrind: bin/main
	valgrind ${VALGRIND_FLAGS} bin/main