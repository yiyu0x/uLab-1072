#include <8051.h>

short keyPressed(short row) {
	if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
		/*
		P1_1 = 0;
		for (short c = 1, col = 0; col < 4; c *= 2, col++) {
			//前四位=>後四位 並且遮蔽前四位	偵測哪一個column被按下去
`			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
			if (magic == c) {
				//return col * 4 + row;
				return 10
			}
		}
		*/
		P1_1=0;
	}
	// P1_1 = 1;
	return -1;	//沒按 return -1
}

int main() {
	short previous = -1;
	short row = 0;
	short count = 1;
	P1_1=1;
	while (1) {
		count*=2;
		P0    =count^0b11111111;
		short key = keyPressed(row);
		if(key==-1){
			P1_1=1;
		}
//		if (key != -1 && key != previous) {	//有按且不等於上一按 => 處理debounce
//			previous = key;
//			P1_1 = 1;
//		}
		// P1_1 = 0;
		row++;
		if (count == 0x10) {	//用count從上往下掃 
			count = 1;
			row   = 0;
		}
	}

}