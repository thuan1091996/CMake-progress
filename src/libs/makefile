.PHONY: libgreeting.so
CC = gcc
FLAGS= -Wall
run.exe: test_shared_lib.c greeting.o
	gcc $^ -L. -lgreeting -o $@

libgreeting.so: greeting.c
	gcc -fPIC -shared -o $@ $^ 

all: run.exe libgreeting.so


clean: 
	rm ./*.so \
	rm ./*.exe \
	rm ./*.o

