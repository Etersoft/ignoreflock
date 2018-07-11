all: libignoreflock.so

CC=gcc
CFLAGS=-g -O2 -Wall -fPIC
LIBNAME=libignoreflock.so
VERSION=0

libignoreflock.so: ignoreflock.o
	$(CC) -fPIC $(CFLAGS) -shared -Wl,-soname,$(LIBNAME).$(VERSION) -o $(LIBNAME).$(VERSION) ignoreflock.o -ldl

clean:
	rm -f $(LIBNAME)
	rm -f $(LIBNAME).$(VERSION)
	rm -f *.o

.PHONY: clean install
