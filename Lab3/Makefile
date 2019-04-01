Lab3-main.hex : Lab3-main.ihx
	packihx Lab3-main.ihx > Lab3-main.hex
Lab3-main.rel : Lab3-main.c
	sdcc -c Lab3-main.c
Lab3-main.ihx : Lab3-main.rel
	sdcc Lab3-main.c