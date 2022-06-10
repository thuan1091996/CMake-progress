######################################################################
# Ref: https://makefiletutorial.com/#flavors-and-modification
# Toolchain variables
LIBS_DIR = libs
SRCS_DIR = . src_files
CC=gcc
CFLAGS = -I include -Wall# -Werror # -g
CFLAGS_MARCO = ${CFLAGS} -DITACHI=7 main.c	#Expand variables & passing pre-processor to main.c -D(Define)
LDFLAGS= ${LIBS_DIR}/*.so
######################################################################
# VPATH = include src # dependencies find in /include first will ignore from /src
# vpah -- patern -- dir list
vpath %.h ./include
vpath %.c ${SRCS_DIR}

######################################################################
.PHONY: all clean list_files depend
######################################################################
#: This is the main target
run.exe: findme_1.o main.o 
	${CC} -o $@ $^ $(LDFLAGS)

main.o: main.c findme_1.h
	${CC} ${CFLAGS_MARCO} -c 

clean: 
	rm ./*.exe ./*.o ./callgrind.out* depend

all: run.exe 
######################################################################
# Testing
showlib: 
	@ls $(LIBS_DIR)/*.so

# Print out file information about every .c file
list_files: $(wildcard $(SRCS_DIR)/*.c)
	ls -la  $?
######################################################################
# Automatically Dependencies 
# 1. Find the dependencies of all source files

######################################################################
# depend: %.c # will not work since the target MUST be wildcard too
# depend need to update every time
source: $(wildcard $(SRCS_DIR)/*.c) 
	@echo ${SRCS_DIR}
	@echo $^
depend: $(wildcard $(LIBS_DIR)/*.c) $(wildcard $(SRCS_DIR)/*.c) $(wildcard *.c)# how to list all source files? % and *
	$(CC) -M $(CFLAGS) $^ > $@
include depend
