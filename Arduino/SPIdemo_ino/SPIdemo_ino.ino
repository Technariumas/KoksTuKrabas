#include<SPI.h>
#define ZERO  0b11101110
#define ONE   0b00101000
#define TWO   0b11011100
#define THREE 0b11010110
#define FOUR  0b10110010
#define FIVE  0b01110110
#define SIX   0b01111110
#define SEVEN 0b11000010
#define EIGHT 0b11111110
#define NINE  0b11110110

void setup() {
  
  pinMode(6, OUTPUT);
  digitalWrite(6, HIGH);

  pinMode(10, OUTPUT);
  digitalWrite(10, HIGH);
  pinMode(11, OUTPUT);
  pinMode(13, OUTPUT);

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);

  digitalWrite(6, LOW);

}

uint8_t digits[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE};


void loop() {
  digitalWrite(10, LOW);
  SPI.transfer(digits[6]);
  digitalWrite(10, HIGH);
  
}
