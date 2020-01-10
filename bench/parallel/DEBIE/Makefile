include ../../../Makefile.cfg

CC = $(CONF_CC)
CFLAGS = $(CONF_CFLAGS) -Icode -Icode/arch/arm7 -Icode/harness
LD_FLAGS = $(CONF_LDFLAGS)

BENCH=debie
SOURCES = \
	$(wildcard code/*.c) \
	$(wildcard code/arch/arm7/*.c) \
	$(wildcard code/harness/*.c)
OBJECTS = $(SOURCES:.c=.o)

all: $(BENCH).elf

$(BENCH).elf: $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@ $(LD_FLAGS)

clean:
	rm -f $(OBJECTS) $(BENCH).elf
