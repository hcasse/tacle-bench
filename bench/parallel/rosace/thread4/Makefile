include ../../../../Makefile.cfg

CC = $(CONF_CC)
CFLAGS = $(CONF_CFLAGS) -Icode -Icode/arch/arm7 -Icode/harness
LD_FLAGS = $(CONF_LDFLAGS)

BENCH=thread4
SOURCES = $(wildcard *.c)
OBJECTS = $(SOURCES:.c=.o)

all: $(BENCH).elf

$(BENCH).elf: $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@ $(LD_FLAGS) -lm

clean:
	rm -f $(OBJECTS) $(BENCH).elf
