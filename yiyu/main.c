#include <8051.h>

short keyPressed(short row) {
	if((P0 & 0b11110000) != 0b11110000){	//if 按下按鈕
		for (short c = 1, col = 0; col < 4; c *= 2, col++) {
			//前四位=>後四位 並且遮蔽前四位	偵測哪一個column被按下去
`			short magic = ((P0 >> 4) ^ 0b11111111) & 0b00001111;
			if (magic == c) {
				return row * 4 + col;
			}
		}
	}
	return -1;	//沒按 return -1
}

short display(short table[], short alpha[], short num[]) {
	for(short i = 0,t=1; i < 4; i++,t*=2) {
		P1 = table[i];
		P2 = alpha[num[i]];
		for(int j = 0; j < 1000; j++){}
	}
}

int main() {
	// P0 -> keyboard
	// P1 -> 顯示器四選一
	// p2 -> 顯示字母

	// P2_0 ~ P2_7
	// P2 = 0b00100101;
	short previous = -1;
	short row = 0;
	short count = 1;
	short num[4] = {0};
	const short alpha[11] = {
		0b00000011,
		0b10011111,
		0b00100101,
		0b00001101,
		0b10011001,
		0b01001001,
		0b01000001,
		0b00011111,
		0b00000001,
		0b00001001,
		0b11111111
	};
	const short table[4] = {
		0b11111110,
		0b11111101,
		0b11111011,
		0b11110111
	};
	P0 = 0b00001111;
	while (1) {
		P0     =count^0b11111111;
		count *=2; //shift
		short key = keyPressed(row);
		if (key != previous ) {	//有按且不等於上一按 => 處理debounce
			previous = key;
//			num[0] =num[1];
//			num[1] =num[2];
//			num[2] =num[3];			
//			num[3] = key;	//往前推
		}
		// P1 = 0b11111111;
		row++;
		if (count == 0x10) {	//用count從上往下掃 
			count = 1;
			row   = 0;
			P1 = 0b11111111;
		}
		display(table, alpha, num);
	}

}