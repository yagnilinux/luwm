# swc source tree
SWC = ../swc
PKG_CONFIG = pkg-config
CFLAGS = -std=c11 -Os -Wall
PREFIX = /usr/local

luwm: luwm.c
	$(CC) $(CFLAGS) -I$(SWC)/libswc -s -o luwm luwm.c -L$(SWC)/libswc `$(PKG_CONFIG) --cflags --libs swc` -lm

install: luwm
	install -Dm755 luwm $(DESTDIR)$(PREFIX)/bin/luwm

clean:
	rm -f luwm
