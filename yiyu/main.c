#include <8051.h>
#include <stdbool.h>

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

void display(short table[], short alpha[], short num[], bool isSetting, long flash_flag) {
	if (isSetting) {
		if (flash_flag > 7800) { // 頻率
			for(short i = 0,t=1; i < 4; i++,t*=2) {
				P1 = table[i];
				P2 = alpha[num[i]];
				for(int j = 0; j < 500; j++){}
			}
		}
	} else {
		for(short i = 0,t=1; i < 4; i++,t*=2) {
			P1 = table[i];
			P2 = alpha[num[i]];
			for(int j = 0; j < 1000; j++){}
		}
	}
}


int main() {
	// P0 -> keyboard
	// P1 -> 顯示器四選一
	// p2 -> 顯示字母

	// A -> 設定現在時間(時:分)
	// B -> 完成設定

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
	short index = 0;
	long flash_flag = 0;
	bool isSetting = false;

	while (1) {
		flash_flag++;
		if (flash_flag >= 8000)  // 頻率
			flash_flag = 0;
		P0     =count^0b11111111;
		count *=2; //shift
		short key = keyPressed(row);
		if (key != previous && key != -1) {	//有按且不等於上一按 => 處理debounce
			previous = key;
//			num[0] =num[1];
//			num[1] =num[2];
//			num[2] =num[3];			
//			num[3] = key;	//往前推
			if (key == 10) {
				isSetting = true;
			}

			if (isSetting) {
				// flash_LED();
				if (key >= 0 && key <= 9)
					num[index++] = key;
				if (index == 4) index = 0;
			}

		}
		// P1 = 0b11111111;
		row++;
		if (count == 0x10) {	//用count從上往下掃 
			count = 1;
			row   = 0;
			P1 = 0b11111111;
		}
		display(table, alpha, num, isSetting, flash_flag);
	}

}