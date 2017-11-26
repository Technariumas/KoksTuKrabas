#include<SPI.h>

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

uint8_t t = 1;
void loop() {
  digitalWrite(10, LOW);
  SPI.transfer(t);
  digitalWrite(10, HIGH);
  delay(300);
  t = t << 1;
  if(0 == t) {
    t = 1;
  }
}
