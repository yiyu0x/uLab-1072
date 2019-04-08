#include <8051.h>
#define PERIOD 15536

unsigned int counter = 0;
int t  = 0;
int dc = 0x70; // 十位
int cc = 0xb0; // 個位
void timer_isr (void) __interrupt (1) __using (1) {
	TH0  = PERIOD >> 8;
	TL0  = PERIOD & 0xff;
	counter++;
}

void delay() {
	for(int i = 0; i < 1500; i++);
}
void display() {
	if(t) P0 = dc;
	else  P0 = cc;
	if (t == 0) t = 1;
	else t = 0;			
	delay();
}

int main(){
	P0   = 0x30;
	TMOD = 0b00000001;
	IE   = 0x82;
	TR0  = 1;
	TH0  = PERIOD >> 8;
	TL0  = PERIOD & 0xff;
	while (1){
		EA = 0;
		if (counter == 10) {
			counter = 0;
			cc++;
			
			if(dc == 0x79 && cc == 0xba){
				dc = 0x70;
				cc = 0xb0;
			}

			if(cc == 0xba){
				cc = 0xb0;
				dc++;
			}			
		}
		EA = 1;
		display();
	}
	return 0;
}