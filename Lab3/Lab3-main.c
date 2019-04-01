#include <8051.h>
#include <stdbool.h>
// #include "LED_Display.h"

short table[] = {0x70, 0xb0, 0xd0, 0xe0};
short num[4] = {15, 15, 15, 15};
short row   = 0;
short keyPressed() {
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

int main() {
	
	P2=0b11111110;
	short count = 1;
	short number = 0;
	short light_index = 3;
	short previous = -1;

		
	// int flag = 1;
	while (1) {

		P2    =count^0b11111111;
		count *=2;

		short key = keyPressed();
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
//////////////////lighting LED/////////////////////////
		for(short i = 0; i < 4; i++) {
			P1  = table[i] + num[i];
			for(int j=0; j<1000; j++){}
		}
		// for(int i=0; i<1000; i++){

		// }
	}

}
	