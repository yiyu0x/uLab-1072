// #include "LED_Display.h"
#include <8051.h>

void LED_Display() {
	for(short i = 0; i < 4; i++)
		P1  = table[i] + num[i];
}
