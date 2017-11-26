#include <SPI.h>

void setup() {
#define ZERO  0b00000000
#define ONE   0b11101110
#define TWO   0b00110010
#define THREE 0b00100110
#define FOUR  0b10001110
#define FIVE  0b00000111
#define SIX   0b00000011
#define SEVEN 0b01101110
#define EIGHT 0b00000010
#define NINE  0b00000110
}

uint8_t digits[] = {
  ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};

void digit(uint8_t d) {  
  digitalWrite(10, LOW);
  SPI.transfer(digits[d]);
  digitalWrite(10, HIGH);
}

void loop() {
  digit(1);

}


