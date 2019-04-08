#include <8051.h>
#include <stdbool.h>
#include "LED_Display.h"
#include "Keypad4x4.h"
int main() {
	short table[4] = {0x70, 0xb0, 0xd0, 0xe0};
	short num[4] = {15, 15, 15, 15};
	short row = 0;
	P2=0b11111110;
	short count = 1;
	short number = 0;
	short previous = -1;
	while (1) {
		P2    =count^0b11111111;
		count *=2;
		short key = keyPressed(row);
		if (key != -1 && key != previous) {
			previous = key;
			num[0] =num[1];
			num[1] =num[2];
			num[2] =num[3];			
			num[3] = key;
		}
		row++;
		if (count == 0x10) {
			count = 1;
			row   = 0;
		}
		LED_Display(table,num);
	}
}
	