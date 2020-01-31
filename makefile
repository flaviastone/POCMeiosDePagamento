CC=g++
CFLAGS=-Wall

SRCDIR   = src
OBJDIR   = build

SOURCES  := $(wildcard $(SRCDIR)/*.cc)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.cc=$(OBJDIR)/%.o)

all: clean $(OBJECTS)

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.cc
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJDIR)/*

install:
	g++ -Wall -o build/BiggestUnInt src/BiggestUnInt.cc
	g++ -Wall -o build/HelloWorld src/HelloWorld.cc
	g++ -Wall -o build/SimpleClass src/SimpleClass.cc
