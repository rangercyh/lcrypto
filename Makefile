.PHONY: all clean

CFLAGS = -g3 -O2 -rdynamic -Wall -I.
SHARED = -fPIC --shared

all: crypto.so

crypto.so: lcrypto.c
	gcc $(CFLAGS) $(SHARED) $^ -o $@ -lcrypto -lssl

clean:
	rm -rf crypto.so
