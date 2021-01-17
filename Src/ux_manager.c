#include "main.h"
#include "ux_manager.h"
#include <stdio.h>

#define UP 0x01
#define ENTER 0x02
#define DOWN 0x03

screen currentScreen;
screen lastScreen;
sFloat minTemp = {"%3.0f", "----", 45, 30, true, 0};
sFloat maxTemp = {"%3.0f", "----", 45, 30, true, 0};
sFloat tempInF = {"%3.0f", "----", 45, 30, true, 0};

void UpdateScreen(void)
{
  char displayString[25];
  
  switch(currentScreen)
  {
  case HOME:
    SSD1306_GotoXY (tempInF.xPos, tempInF.yPos);
    sprintf(displayString, tempInF.format, tempInF.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    break;
  case MIN_TEMP:
    break;
  case MIN_SET:
    SSD1306_GotoXY (minTemp.xPos, minTemp.yPos);
    sprintf(displayString, minTemp.format, minTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    break;
  case MAX_TEMP:
    break;
  case MAX_SET:
    SSD1306_GotoXY (maxTemp.xPos, maxTemp.yPos);
    sprintf(displayString, maxTemp.format, maxTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    break;
  }
  SSD1306_UpdateScreen();
}

void SwitchScreens(screen screenNum) 
{
  lastScreen = currentScreen;
  char displayString[25];
  
  switch (screenNum){
  case HOME:
    SSD1306_Clear();
    SSD1306_GotoXY (5,0);
    SSD1306_Puts ("TEMPERATURE", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (tempInF.xPos, tempInF.yPos);
    sprintf(displayString, tempInF.format, tempInF.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MIN_TEMP:
    SSD1306_Clear();
    SSD1306_GotoXY (23,0);
    SSD1306_Puts ("MIN TEMP", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (minTemp.xPos, minTemp.yPos);
    sprintf(displayString, minTemp.format, minTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MAX_TEMP:
    SSD1306_Clear();
    SSD1306_GotoXY (23,0);
    SSD1306_Puts ("MAX TEMP", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (maxTemp.xPos, maxTemp.yPos);
    sprintf(displayString, maxTemp.format, maxTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  case MIN_SET:
    SSD1306_Clear();
    SSD1306_GotoXY (27,0);
    SSD1306_Puts ("SET MIN", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (minTemp.xPos, minTemp.yPos);
    sprintf(displayString, minTemp.format, minTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    UpdateScreen();
    break;
  case MAX_SET:
    SSD1306_Clear();
    SSD1306_GotoXY (27,0);
    SSD1306_Puts ("SET MAX", &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_GotoXY (maxTemp.xPos, maxTemp.yPos);
    sprintf(displayString, maxTemp.format, maxTemp.data);
    SSD1306_Puts (displayString, &Font_11x18, SSD1306_COLOR_WHITE);
    SSD1306_UpdateScreen();
    break;
  }
  
  currentScreen = screenNum;
}
    
uint8_t GetButtonVal(void) 
{
  uint8_t bVal = 0x0;
  
  if (!HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_8)) {
    bVal = UP;
  } else if (!HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4)) {
    bVal = ENTER;
  } else if (!HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_5)) {
    bVal = DOWN;
  } else {
    bVal = 0;
  }
  
  return bVal; 
}

uint8_t ProcessKeyCode(uint16_t key_code) 
{
  switch (currentScreen) {
  case HOME:
    switch (key_code) {
    case UP:
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, GPIO_PIN_SET);
      SwitchScreens(MAX_TEMP);
      break;
    case ENTER:
      break;
    case DOWN:
      SwitchScreens(MIN_TEMP);
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
    }
  break;
  case MIN_SET:
    switch (key_code) {
    case UP:
      minTemp.data++;
      break;
    case ENTER:
      SwitchScreens(MIN_TEMP);
      break;
    case DOWN:
      minTemp.data--;
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
    }
  break;
  case MAX_SET:
    switch (key_code) {
    case UP:
      maxTemp.data++;
      break;
    case ENTER:
      SwitchScreens(MAX_TEMP);
      break;
    case DOWN:
      maxTemp.data--;
      break;
    }
  break;
  }
  
  return true; 
}