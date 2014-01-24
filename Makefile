OBJECTS=
CFLAGS=-g -Wall `pkg-config --cflags glib-2.0`
LDLIBS=-lm `pkg-config --libs glib-2.0`
CC=clang

$(P): $(OBJECTS)
