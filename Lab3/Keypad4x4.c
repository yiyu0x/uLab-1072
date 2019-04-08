#include "8051.h"
#include "Keypad4x4.h"
short keyPressed(short row) {
	if((P2 & 0b11110000) != 0b11110000){
		for (short c = 1, col = 0; col < 4; c *= 2, col++) {
`			short magic = ((P2 >> 4) ^ 0b11111111) & 0b00001111;
			if (magic == c) {
				return col * 4 + row;
			}
		}
	}
	return -1;
}