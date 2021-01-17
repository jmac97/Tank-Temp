#include <stdint.h>
#include "SSD1306\oled\Inc\ssd1306.h"

typedef enum Screens 
{
  HOME,
  MIN_TEMP,
  MAX_TEMP,
  MIN_SET,
  MAX_SET,
} screen;

typedef struct SFloat
{
  char format[10];
  char invalidMsg[4];
  uint16_t xPos;
  uint16_t yPos;
  uint8_t valid;
  float data;
} sFloat;

extern sFloat minTemp;
extern sFloat maxTemp;
extern sFloat tempInF;

uint8_t GetButtonVal(void);
uint8_t ProcessKeyCode(uint16_t key_code);
uint8_t ProcessKeyHold(uint16_t key_code);
void SwitchScreens(screen screenNum);
void UpdateScreen(void);