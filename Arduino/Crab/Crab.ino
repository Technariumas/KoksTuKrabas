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
#define DARK  0b00000000

int MAX_CRAB = 6;

const int REED_PIN1 = 3; // Pin connected to reed switch
const int REED_PIN2 = 4;
const int REED_PIN3 = 5;
const int REED_PIN4 = 7;
const int REED_PIN5 = 8;
const int REED_PIN6 = 9;
const int REED_PIN7 = A5;
const int REED_PIN8 = A4;
const int REED_PIN9 = A3;
const int REED_PIN10 = A2;
const int REED_PIN11 = A1;
const int REED_PIN12 = A0;
uint8_t digits[] = {ZERO, ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN, EIGHT, NINE, DARK};
unsigned int firstCrab = 0;
unsigned int secondCrab = 0;
unsigned int thirdCrab = 0;
unsigned int firstCrabCount = 0;
unsigned int secondCrabCount = 0;
unsigned int thirdCrabCount = 0;
unsigned int firstCrabPercent = 0;
unsigned int secondCrabPercent = 0;
unsigned int thirdCrabPercent = 0;


void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
  pinMode(6, OUTPUT);
  digitalWrite(6, HIGH);
  pinMode(10, OUTPUT);
  digitalWrite(10, HIGH);
  pinMode(11, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(REED_PIN1, INPUT);
  pinMode(REED_PIN2, INPUT);
  pinMode(REED_PIN3, INPUT);
  pinMode(REED_PIN4, INPUT);
  pinMode(REED_PIN5, INPUT);  
  pinMode(REED_PIN6, INPUT);  
  pinMode(REED_PIN7, INPUT); 
  pinMode(REED_PIN8, INPUT); 
  pinMode(REED_PIN9, INPUT);
  pinMode(REED_PIN10, INPUT);
  pinMode(REED_PIN11, INPUT);  
  pinMode(REED_PIN12, INPUT);
  
  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  digitalWrite(6, LOW);  
}

uint16_t buf;

void readSwitches(){
  buf=0;
 // Serial.println("reed switch buffer:");
 // Serial.println(buf, BIN);  
  buf = buf | (digitalRead(REED_PIN1) << 0);
 // Serial.println(buf, BIN);
  buf = buf | (digitalRead(REED_PIN2) << 1);
  buf = buf | (digitalRead(REED_PIN3) << 2);
  buf = buf | (digitalRead(REED_PIN4) << 3);
  buf = buf | (digitalRead(REED_PIN5) << 4);
  buf = buf | (digitalRead(REED_PIN6) << 5);  
  buf = buf | (digitalRead(REED_PIN7) << 6);
  buf = buf | (digitalRead(REED_PIN8) << 7);
  buf = buf | (digitalRead(REED_PIN9) << 8);
  buf = buf | (digitalRead(REED_PIN10) << 9);
  buf = buf | (digitalRead(REED_PIN11) << 10);
  buf = buf | (digitalRead(REED_PIN12) << 11); 
  //buf = ~buf;
}

unsigned int get_tens(unsigned int num) {
  unsigned int tens = 0;
  if (num == 100) {
    tens = 9;
  }
  else {
    tens = num/10;
  }
  return tens;  
}

unsigned int get_single_digits(unsigned int num) {
  unsigned int sd = 0;
  if (num == 100) {
    sd = 9;
  }
  else if (num == 0) {
    sd = 10;
  }
  else {
    sd = num % 10;
  }
  return sd;
}

void calculate_crabs() {
  firstCrab = 0;
  secondCrab = 0;
  thirdCrab = 0;
  for (int drum=0; drum < 6; drum++) {
    unsigned int t = (buf & 0b000000000011);
    if (t == 0)
      firstCrab++;
    if (t == 1)
      secondCrab++;
    if (t == 2)
      thirdCrab++;
    buf = buf >> 2;     
    }
  firstCrabPercent = firstCrab * 100 / MAX_CRAB;
  secondCrabPercent = secondCrab * 100 / MAX_CRAB;
  thirdCrabPercent = thirdCrab * 100 / MAX_CRAB;
  Serial.println(firstCrabPercent);  
  }

void display_crabs() {
    digitalWrite(10, LOW);
    SPI.transfer(digits[get_single_digits(firstCrabPercent)]);
    SPI.transfer(digits[get_tens(firstCrabPercent)]);  
    SPI.transfer(digits[get_single_digits(secondCrabPercent)]);
    SPI.transfer(digits[get_tens(secondCrabPercent)]);
    SPI.transfer(digits[get_single_digits(thirdCrabPercent)]);
    SPI.transfer(digits[get_tens(thirdCrabPercent)]);
    digitalWrite(10, HIGH);  
}


void loop() {
  readSwitches();    
  Serial.print("Initial buf value:");
  Serial.print(buf, BIN);   
  Serial.print("\n");
  calculate_crabs();
  display_crabs();
  delay(200);
}



