#include<SPI.h>
#include <Bounce2.h>

#define ZERO  0b11101110
#define ONE   0b10000010
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
const int BUTTON = 2;

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

unsigned int firstCrabDisplay = 0;
unsigned int secondCrabDisplay = 0;
unsigned int thirdCrabDisplay = 0;

uint8_t crabIndex[6][3] = {{2, 1, 3},
                           {3, 2, 1},
                           {1, 3, 2}, 
                           {2, 1, 3}, 
                           {1, 3, 2}, 
                           {1, 3, 2}};

Bounce button = Bounce(BUTTON, 100);

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

  pinMode(BUTTON, INPUT_PULLUP);
  
  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  digitalWrite(6, LOW);  
}



uint16_t readSwitches(){
  uint16_t buf = 0;
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
  buf = ~buf;
  return buf;
}

unsigned int get_tens(unsigned int num) {
  unsigned int tens = 0;
  if (num == 100) {
    tens = 9;
  }
  else if (num == 0) {
    tens = 10;
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
  else {
    sd = num % 10;
  }
  return sd;
}

void calculate_crabs(uint16_t buf) {
  firstCrab = 0;
  secondCrab = 0;
  thirdCrab = 0;
  for (int drum=0; drum < 6; drum++) {
    unsigned int t = (buf & 0b000000000011);
    if (t == crabIndex[drum][0])
      firstCrab++;
    if (t == crabIndex[drum][1])
      secondCrab++;
    if (t == crabIndex[drum][2])
      thirdCrab++;
    buf = buf >> 2;     
    }
  firstCrabPercent = firstCrab * 100 / MAX_CRAB;
  secondCrabPercent = secondCrab * 100 / MAX_CRAB;
  thirdCrabPercent = thirdCrab * 100 / MAX_CRAB;
 
  }

void displayDigits(uint8_t digit1, uint8_t digit2, uint8_t digit3, uint8_t digit4, uint8_t digit5, uint8_t digit6) {
    digitalWrite(10, LOW);
    SPI.transfer(digit1);
    SPI.transfer(digit2);
    SPI.transfer(digit3);
    SPI.transfer(digit4);  
    SPI.transfer(digit5);
    SPI.transfer(digit6);   
    digitalWrite(10, HIGH);  
}

void display_crabs() {
    digitalWrite(10, LOW);
   
    SPI.transfer(digits[get_single_digits(thirdCrabDisplay)]);
    SPI.transfer(digits[get_tens(thirdCrabDisplay)]);
    SPI.transfer(digits[get_single_digits(firstCrabDisplay)]);
    SPI.transfer(digits[get_tens(firstCrabDisplay)]);  
    SPI.transfer(digits[get_single_digits(secondCrabDisplay)]);
    SPI.transfer(digits[get_tens(secondCrabDisplay)]);   


    digitalWrite(10, HIGH);  
}

uint32_t displayTs = 0;
uint32_t lastDrumChangeTs = 0;
enum {STATE_IDLE, STATE_PLAY} state = STATE_IDLE;
#define TIMEOUT_INTERVAL 30000
#define DISPLAY_REFRESH_INTERVAL 50
uint16_t drumState, newDrumState;

void  playStartAnimation() {
  displayDigits(ZERO, DARK, ZERO, DARK, ZERO, DARK);
  delay(50);
  displayDigits(DARK, DARK, DARK, DARK, DARK, DARK);
  delay(50);
  displayDigits(ZERO, DARK, ZERO, DARK, ZERO, DARK);
  delay(50);
  displayDigits(DARK, DARK, DARK, DARK, DARK, DARK);
  delay(50);
  displayDigits(ZERO, DARK, ZERO, DARK, ZERO, DARK);
  delay(50);
}

void resetCrabDisplay() {
    firstCrabDisplay = 0;
    secondCrabDisplay = 0;
    thirdCrabDisplay = 0;
}
void updateDisplayCrabs() {
  if(firstCrabDisplay < firstCrabPercent) {
    firstCrabDisplay++;
  } else if(firstCrabDisplay > firstCrabPercent) {
    firstCrabDisplay--;
  }

  if(secondCrabDisplay < secondCrabPercent) {
    secondCrabDisplay++;
  } else if(secondCrabDisplay > secondCrabPercent) {
    secondCrabDisplay--;
  }

  if(thirdCrabDisplay < thirdCrabPercent) {
    thirdCrabDisplay++;
  } else if(thirdCrabDisplay > thirdCrabPercent) {
    thirdCrabDisplay--;
  }
}

void loop() {
  button.update();
  
  newDrumState = readSwitches();
  
  switch(state) {
    case STATE_IDLE:
      if(button.fell()) {
        playStartAnimation();
        resetCrabDisplay();
      }
      if(newDrumState != drumState) {
        state = STATE_PLAY;         
      }
      break;
    case STATE_PLAY:
      if(newDrumState != drumState) {
        drumState = newDrumState;
        lastDrumChangeTs = millis();
        calculate_crabs(drumState);
        //display_crabs();
      }

      if(millis() - displayTs > DISPLAY_REFRESH_INTERVAL) {
        updateDisplayCrabs();
        display_crabs();
        displayTs = millis();
      }

      if(millis() - lastDrumChangeTs > TIMEOUT_INTERVAL){
        state = STATE_IDLE;
        firstCrabPercent = 0;
        secondCrabPercent = 0;
        thirdCrabPercent = 0;
        display_crabs();
      }

      if(button.fell()){
        state = STATE_IDLE;
        playStartAnimation();
        resetCrabDisplay();        
      }
      break;
  }
}

//void loop2() {
//  readSwitches();    
//  Serial.print("Initial buf value:");
//  Serial.print(drumState, BIN);   
//  Serial.print("\n");
//  calculate_crabs();
//  display_crabs();
//  //delay(50);
//}



