CFLAGS  = -Wall -fPIC -O2
LDFLAGS = -lasound -lpthread -ldl -lrt

SOURCES = main.c slimproto.c utils.c output.c buffer.c stream.c decode.c flac.c pcm.c mad.c vorbis.c faad.c
DEPS    = squeezelite.h
EXECUTABLE = squeezelite

OBJECTS = $(SOURCES:.c=.o)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@

$(OBJECTS): $(DEPS)

.c.o:
	$(CC) $(CFLAGS) $< -c -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
