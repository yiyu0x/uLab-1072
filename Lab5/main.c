//#include <math.h>
#include <8051.h>

#define PERIOD 65536
#define INIT_TIME 3036	//65536-62500
int timer1_count;
char music_index;
int isSound;
int table[16] = {262, 294, 330, 349, 392, 440, 494};
const char music[96]={
	 10,10,10,10,9,8,8,7,6,6,8,10,13,13,13,13,12,11,
	 11,10,9,9,10,11,10,11,10,12,11,10,10,9,8,8,7,6,7,7,7,7,8,7,6,0,0,6,0,0,
	 10,10,10,10,9,8,8,7,7,7,7,7,13,13,13,13,14,13,13,12,12,12,13,14,15,15,15,
	 15,14,14,13,13,13,13,12,11,10,10,10,10,11,9,8,0,0,8,0,0
};
char counter = 0;
char table_index=0;

void timer_isr (void) __interrupt (1) __using (1) {
//	if(music[music_index]!=0 || isSound){
		TH0  = (PERIOD-table[music[music_index]]) >> 8;
		TL0  = (PERIOD-table[music[music_index]]) & 0xff;
//	}
//	else{
//	}
	counter++;
}

void timer1 (void) __interrupt (3) __using (2) {
	TH1  = INIT_TIME >> 8;
	TL1  = INIT_TIME & 0xff;
	timer1_count++;
}

void init(){
	music_index=0;
	timer1_count=-1;
	float tmp;
	for(int i=7;i<16;i++){
		table[i]=table[i-7]*2;
	}
	for(int i=0;i<16;i++){
		tmp=1.0/table[i]*1000000;
		table[i]=tmp;
	}
}
int main(){
	init();
	TMOD = 0b00010001;
	IE   = 0x8A;
	TR0  = 1;
	TR1  = 1;
	TH0  = PERIOD >> 8;
	TL0  = PERIOD & 0xff;
	P2_7=0;
	isSound=1;
	while (1){
		EA = 0;
		if (counter == 1) {
			counter = 0;
			P2_7=!P2_7;
		}
		if(timer1_count == 10){
			/*
			if(isSound){
				isSound=0;
				music_index++;
			}
			else{
				isSound=1;
			}
			timer1_count = 0;
			if(music_index == 18)
				music_index = 0;
			*/
			music_index++;
			timer1_count=0;
			if(music_index == 96)
				music_index = 0;
		}
		
		EA = 1;
	}
	
	return 0;
}