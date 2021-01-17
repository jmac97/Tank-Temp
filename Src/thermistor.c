#include <stdint.h>
#include "thermistor.h"

uint16_t breakpointsX[7] = {3975, 3801, 3133, 1424, 816, 475, 260};
float MandB[2][7] = {
  {0, -0.086207, -0.037425, -0.023406, -0.032895, -0.05571, -0.101523},
  {0, 302.67241, 117.25299, 73.329432, 86.842105, 105.45961, 126.39594}
};

int16_t ThermTemp (uint16_t counts) {
  uint8_t found = 0;
  int16_t thermC;
  
  for (uint8_t i = 0; i < 6; i++) {
    if (counts > breakpointsX[i]) {
      found = i;
      i = 7;
    }
  }
  
  if ((found != 0) && (found != 7)) {
    thermC = (int16_t)(MandB[0][found] * counts + MandB[1][found] + .5);
  } else {
    thermC = 10000;
  }
  
  return thermC;
}

int16_t C2F(int16_t CVal) {
  int16_t thermF;
  
  if (CVal == 10000) {
    thermF = CVal;
  } else {
    thermF = (int16_t)(CVal * 9/5) + 32;
  }
  
  return thermF;
}