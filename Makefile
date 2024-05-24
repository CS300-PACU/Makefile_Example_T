#############################################################################
# File name:  Makefile
# Author:     chadd williams
# Date:       Sept 21, 2023
# Class:      CS360
# Assignment: Makefile Examples
# Purpose:    demonstrate the components of a Makefile
#############################################################################

# VARIABLES

CC=clang

CFLAGS=-g -Wall
VALGRIND_FLAGS=-v --leak-check=yes --track-origins=yes --leak-check=full\
 --show-leak-kinds=all
ENSCRIPT_FLAGS=-C -T 2 -p - -M Letter -Ec --color -fCourier8

.PHONY: clean

TARGETS=bin/main

# RULES
#
# TARGET: DEPENDENCIES
# <tab>COMMAND

all: bin ${TARGETS}

bin:
	mkdir -p bin

bin/main: bin/main.o
	${CC} -o bin/main bin/main.o ${CFLAGS}

bin/main.o: src/main.c
	${CC}  -o bin/main.o -c src/main.c ${CFLAGS}

clean:
	rm -rf bin/*.o ${TARGETS} bin/*.pdf

printAll:
	enscript ${ENSCRIPT_FLAGS} src/main.c  | ps2pdf - bin/main.pdf

valgrind: bin/main
	valgrind ${VALGRIND_FLAGS} bin/main