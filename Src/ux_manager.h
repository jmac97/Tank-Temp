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

// memory 
typedef union _temp_settings {
  uint8_t Array[3];
  struct settingsStruct {
    uint8_t minTemp;
    uint8_t maxTemp;
    uint8_t dummy;
  } settingsData;
} settings;

extern sFloat minTemp;
extern sFloat maxTemp;
extern sFloat tempInF;

extern I2C_HandleTypeDef hi2c1;
extern HAL_StatusTypeDef i2cResult;

extern settings userSettings;

uint8_t GetButtonVal(void);
uint8_t ProcessKeyCode(uint16_t key_code);
uint8_t ProcessKeyHold(uint16_t key_code);
void SwitchScreens(screen screenNum);
void UpdateScreen(void);