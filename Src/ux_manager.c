#include "main.h"
#include "ux_manager.h"
#include <stdio.h>

#define UP 0x7
#define ENTER 0xB
#define DOWN 0xD
#define TEST 0xE

screen currentScreen;
screen lastScreen;
sFloat count = {"%3.0f", "----", 52, 30, true, 0};

void UpdateScreen(void)
{
  char displayString[25];
  
  switch(currentScreen)
  {
  case HOME:
    break;
  case MIN_TEMP:
    break;
  case MIN_SET:
    SSD1306_GotoXY (count.xPos, count.yPos);
    sprintf(displayString, count.format, count.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    break;
  case MAX_TEMP:
    break;
  case MAX_SET:
    SSD1306_GotoXY (count.xPos, count.yPos);
    sprintf(displayString, count.format, count.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    break;
  }
  SSD1306_UpdateScreen();
}

void SwitchScreens(screen screenNum) 
{
  lastScreen = currentScreen;
  
  switch (screenNum){
  case HOME:
    SSD1306_Clear();
    SSD1306_GotoXY (42,0);
    SSD1306_Puts ("Home", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (52, 30);
    SSD1306_Puts ("XX", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MIN_TEMP:
    SSD1306_Clear();
    SSD1306_GotoXY (42,0);
    SSD1306_Puts ("Min", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (52, 30);
    SSD1306_Puts ("XX", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MAX_TEMP:
    SSD1306_Clear();
    SSD1306_GotoXY (42,0);
    SSD1306_Puts ("Max", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (52, 30);
    SSD1306_Puts ("XX", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MIN_SET:
    SSD1306_Clear();
    SSD1306_GotoXY (0,0);
    SSD1306_Puts ("Min Set", &Font_11x18, SSD1306_COLOR_WHITE);
    UpdateScreen();
    break;
  case MAX_SET:
    SSD1306_Clear();
    SSD1306_GotoXY (0,0);
    SSD1306_Puts ("Max Set", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (52, 30);
    SSD1306_Puts ("XX", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  }
  
  currentScreen = screenNum;
}
    
uint8_t GetButtonVal(void) 
{
  uint8_t bVal = 0x0;
  
  bVal += HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_6);
  bVal = bVal << 1;
  
  bVal += HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_3);
  bVal = bVal << 1;
  
  bVal += HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4);
  bVal = bVal << 1;
  
  bVal += HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13);
  
  return bVal; 
}

uint8_t ProcessKeyCode(uint16_t key_code) 
{
  switch (currentScreen) {
  case HOME:
    switch (key_code) {
    case UP:
      SwitchScreens(MAX_TEMP);
      break;
    case ENTER:
      break;
    case DOWN:
      SwitchScreens(MIN_TEMP);
      break;
    case TEST:
      break;
    }
  break;
  case MIN_TEMP:
    switch (key_code) {
    case UP:
      SwitchScreens(HOME);
      break;
    case ENTER:
      SwitchScreens(MIN_SET);
      break;
    case DOWN:
      SwitchScreens(MAX_TEMP);
      break;
    case TEST:
      break;
    }
  break;
  case MIN_SET:
    switch (key_code) {
    case UP:
      count.data++;
      break;
    case ENTER:
      SwitchScreens(MIN_TEMP);
      break;
    case DOWN:
      count.data--;
      break;
    }
  break;
  case MAX_TEMP:
    switch (key_code) {
    case UP:
      SwitchScreens(MIN_TEMP);
      break;
    case ENTER:
      SwitchScreens(MAX_SET);
      break;
    case DOWN:
      SwitchScreens(HOME);
      break;
    case TEST:
      break;
    }
  break;
  case MAX_SET:
    switch (key_code) {
    case UP:
      count.data++;
      break;
    case ENTER:
      SwitchScreens(MAX_TEMP);
      break;
    case DOWN:
      count.data--;
      break;
    }
  break;
  }
  
  return true; 
}