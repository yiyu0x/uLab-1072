#include <8051.h>

unsigned Ans[3] = {0, 0, 0};
int AAA=55536;
int count = 800;
unsigned times = 0;
unsigned sw = 1;
unsigned char step=0x01; 
__bit direct = 0;

void view();
int GetKey();

void main()
{
	IE = 0x82;
	TMOD = 0x11;

	TH0 = AAA >> 8;
	TL0 = AAA & 0xff;
	TR0 = 0;

	//P2±μ‥iAa?L!AP1±μ‥i?C?qAa￥U?1
	while (1)
	{
		int P = GetKey();
		if (P != -1)
			if (P < 10)
			{
				Ans[0] = Ans[1];
				Ans[1] = Ans[2];
				Ans[2] = P;
			}
			else if (P == 10)
			{
				//Do ??RE°w
				TR0 = 1;
				direct = 0;
				count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;

				//Ak1sAa?L
				Ans[0] = 0;
				Ans[1] = 0;
				Ans[2] = 0;
			}
			else if (P == 11)
			{
				//Do °fRE°w
				TR0 = 1;
				direct = 1;
				count = (Ans[0] * 100 + Ans[1] * 10 + Ans[2]) * 5 / 9;


				//Ak1sAa?L
				Ans[0] = 0;
				Ans[1] = 0;
				Ans[2] = 0;
			}

		view();
	}
}

void timer0 (void) __interrupt (1) __using (1)

{
	TH0 = AAA >> 8;
	TL0 = AAA & 0xff;

	if(direct==1)
	{ 
		step>>=1; 
		if(step==0x00)
			step=0x08; 

		P0&=0xf0; 
		P0|=step; 
	}
	else
	{ 
		step<<=1; 
		if(step==0x10) 
			step=0x01; 

		P0&=0xf0; 
		P0|=step;
	}

	if (--count<=0)
		TR0 = 0;
}

void view()
{
	unsigned i;
//	P1 = 15 + 0x70;
	for (i=0; i<55; i++);
	P1 = Ans[0] + 0x70;
	for (i=0; i<55; i++);
	P1 = Ans[1] + 0xb0;
	for (i=0; i<55; i++);
	P1 = Ans[2] + 0xd0;

	times++;
	if (times > 792)
		sw = 1;
}
int GetKey()
{
	unsigned p,q;
	for (p=0; p<4; p++)
	{
		P2 = ((~(1<<p))<<4) | 0xf;
		if ( ((P2 & 0xf) != 0xf) && (sw == 1) )
		{
			for (q=0; q<4; q++)
				if (P2 % 2 == 1)
					P2 /= 2;
				else
					break;
			sw = 0;
			times = 0;
			return 4*p+q;	//1e?U?e?Jao-E(10?i|i)
		}
	}
	return -1;
}