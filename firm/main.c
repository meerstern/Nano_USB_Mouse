#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include "debug.h"

#include "ch554.h"
#include "mouse.h"
#include "flash.h"


#define SCLK_PIN	4	//OUT
#define SOUT_PIN	5	//IN
#define SCTR_PIN	6	//OUT

#define delayUs	mDelayuS

#define INPUT_MASK		0x7F
#define MOVE_MASK		0x78
#define BUTTON_MASK		0x03

#define ADDRESS_DIRECTION	0		//Flash Address for Direction Memory
#define MOUSE_MOVE_DELTA	2		//Joystick Normal Speed
#define MOUSE_MOVE_SCALE	4		//Joystick Speed Up Scale
#define MOUSE_COUNT_MAX		12		//Joystick Speed Up Count

enum{
	BOTTOM_SIDE_USB_MODE,	
	UP_SIDE_USB_MODE,	
	LEFT_SIDE_USB_MODE,
	RIGHT_SIDE_USB_MODE,
	USB_MODE_MAX
};

enum{
	SPEED_LOW,
	SPEED_MID,
	SPEED_HIGH	
};

enum{
		BTN_A,	//0
		BTN_B,	//1
		JOY_C,	//2
		JOY_D,	//3
		JOY_E,	//4
		JOY_F,	//5
		JOY_G	//6
};

SBIT(SCLK, 0x90, SCLK_PIN);
SBIT(SOUT, 0x90, SOUT_PIN);
SBIT(SCTR, 0x90, SCTR_PIN);

bool BtnLeft 	= false;
bool BtnRight	= false;
bool JoyUp 		= false;
bool JoyDown 	= false;
bool JoyLeft 	= false;
bool JoyRight 	= false;


void initGPIO(void)
{	
	//Input Pullup
	P1_MOD_OC |= SOUT_PIN;
    P1_DIR_PU |= SOUT_PIN;	
	
	P1_MOD_OC = P1_MOD_OC & ~(1<<SCLK_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<SCLK_PIN);
	
	P1_MOD_OC = P1_MOD_OC & ~(1<<SCTR_PIN);
    P1_DIR_PU = P1_DIR_PU |	(1<<SCTR_PIN);
	
	SCTR = 1;
	SCLK = 0;
}

unsigned short shiftIn()
{	

  unsigned short  data;

  SCTR = 0;
  delayUs(5);
  SCTR = 1;
  delayUs(5);
  data = SOUT&0x01;
  
  for (unsigned short  i=1; i<8; i++){
    SCLK = 1;
	delayUs(5);
    data = data << 1 | (SOUT&0x01);
    SCLK = 0;
	delayUs(5);
  }

  return data;
}

void convertMode(unsigned char mode, unsigned char data, 
	bool *left_btn, bool *right_btn, 
	bool *up, bool *down, bool *left, bool *right)
{
	unsigned char dat = ~data;//Logic Inverted
	 	
	if(mode==BOTTOM_SIDE_USB_MODE)
	{
		*left_btn 	= (dat>>BTN_B)&0x01|(dat>>JOY_C)&0x01;//B&C
		*right_btn 	= (dat>>BTN_A)&0x01;				//A				
	}
	else
	{
		*left_btn  	= (dat>>BTN_A)&0x01|(dat>>JOY_C)&0x01;//A&C
		*right_btn	= (dat>>BTN_B)&0x01;				//B
	}
	
	if(mode==LEFT_SIDE_USB_MODE)
	{
		*up 		= (dat>>JOY_G)&0x01;
		*down 		= (dat>>JOY_D)&0x01;
		*left 		= (dat>>JOY_F)&0x01;
		*right 		= (dat>>JOY_E)&0x01;
	}
	else if(mode==RIGHT_SIDE_USB_MODE)
	{
		*up 		= (dat>>JOY_D)&0x01;
		*down 		= (dat>>JOY_G)&0x01;
		*left 		= (dat>>JOY_E)&0x01;
		*right 		= (dat>>JOY_F)&0x01;
	}
	else if(mode==BOTTOM_SIDE_USB_MODE)
	{
		*up 		= (dat>>JOY_F)&0x01;
		*down 		= (dat>>JOY_E)&0x01;	
		*left 		= (dat>>JOY_D)&0x01;
		*right 		= (dat>>JOY_G)&0x01;
	}
	else //mode==UP_SIDE_USB_MODE
	{
		*up 		= (dat>>JOY_E)&0x01;
		*down 		= (dat>>JOY_F)&0x01;
		*left 		= (dat>>JOY_G)&0x01;
		*right 		= (dat>>JOY_D)&0x01;
	}	
}


void main()
{
	CfgFsys();
	mInitSTDIO();
	initGPIO();
	
	int8_t moveX;
	int8_t moveY;
	unsigned char move = 0;
	unsigned char moveOld = 0;
	unsigned char btn = 0;
	unsigned char btnOld = 0;
	unsigned char direction = UP_SIDE_USB_MODE;
	unsigned char joyCount = 0;
	
	unsigned short dat = 0;
	dat = shiftIn();
	mDelaymS(1);
	dat = shiftIn();
		
	convertMode(UP_SIDE_USB_MODE, dat, 
				&BtnLeft, &BtnRight, 
				&JoyUp, &JoyDown, &JoyLeft, &JoyRight);
	
	if(JoyUp||JoyDown||JoyLeft||JoyRight)
	{
		if(JoyDown)
		{			
			direction = RIGHT_SIDE_USB_MODE;
		}
		else if(JoyLeft)
		{
			direction = BOTTOM_SIDE_USB_MODE;			
		}
		else if(JoyRight)
		{			
			direction = UP_SIDE_USB_MODE;
		}
		else	//JoyUp
		{
			direction = LEFT_SIDE_USB_MODE;
		}
		writeDataFlash(ADDRESS_DIRECTION, &direction, 1);
	}
	else
	{
		readDataFlash(ADDRESS_DIRECTION, &direction, 1);
	}
	mDelaymS(5);

	mouse_init();

	while(1)
	{
		dat = shiftIn();
		move = dat & MOVE_MASK;
		btn = dat &BUTTON_MASK;
		convertMode(direction, dat, 
				&BtnLeft, &BtnRight, 
				&JoyUp, &JoyDown, &JoyLeft, &JoyRight);
		
		
		if(JoyUp||JoyDown||JoyLeft||JoyRight)
		{
			if(JoyUp)
				moveX = MOUSE_MOVE_DELTA;
			else if(JoyDown)
				moveX = -MOUSE_MOVE_DELTA;
			else
				moveX = 0;
			
			if(JoyLeft)
				moveY = MOUSE_MOVE_DELTA;
			else if(JoyRight)
				moveY = -MOUSE_MOVE_DELTA;
			else
				moveY = 0;
			
			if(joyCount<MOUSE_COUNT_MAX)
				joyCount++;
			
			//Speed Up
			if(joyCount>=MOUSE_COUNT_MAX)
			{
				moveX = moveX*MOUSE_MOVE_SCALE;
				moveY = moveY*MOUSE_MOVE_SCALE;
			}
			
			mouse_move(moveX, moveY);
			moveOld = move;
			mDelaymS(3);
		}
		else
		{
			joyCount = 0;
		}
		
		
		if(btn != btnOld )
		{
			btn = 0;
			if(BtnLeft)
				btn = MOUSE_LEFT_BUTTON;
			if(BtnRight)
				btn = MOUSE_RIGHT_BUTTON;
			
			mouse_buttons(btn);
			btnOld = btn;
			mDelaymS(3);
		}
	}
}
