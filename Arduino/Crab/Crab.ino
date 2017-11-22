void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));
}

void loop() {
  Serial.println("********************************");  
  int MAX_CRAB = 6;
  unsigned int firstCrab = 0;
  unsigned int secondCrab = 0;
  unsigned int thirdCrab = 0;
  unsigned int firstCrabCount = 0;
  unsigned int secondCrabCount = 0;
  unsigned int thirdCrabCount = 0;
  unsigned int firstCrabPercent = 0;
  unsigned int secondCrabPercent = 0;
  unsigned int thirdCrabPercent = 0;
  unsigned int answers[] = {0b011111110101, 0b010110101001, 0b111111111101, 0b101010010101};
  unsigned int ind = random(0, 3);
  Serial.println("ind:");
  Serial.println(ind);
  unsigned int buf = answers[ind];
  Serial.print("Initial buf value:");
  Serial.print(buf, BIN);   
  Serial.print("\n");
  for (int drum=0; drum < 6; drum++){
    Serial.print("New question, drum:");
    Serial.print(drum);
    Serial.print("\n");      

    Serial.print("buf:"); 
    Serial.print(buf, BIN);
    Serial.print("\n");     
    unsigned int t = (buf & 0b000000000011);
    if (t == 1)
      firstCrab++;
    if (t == 2)
      secondCrab++;
    if (t == 3)
      thirdCrab++;
    buf = buf >> 2;
    Serial.print("crab answer matched:"); 
    Serial.print(t);
    Serial.print("\n"); 
    firstCrabPercent = firstCrab * 100 / MAX_CRAB;
    secondCrabPercent = secondCrab * 100 / MAX_CRAB;
    thirdCrabPercent = thirdCrab * 100 / MAX_CRAB;
    Serial.print("Your crab percentages are:");
    Serial.print("\n");   
    Serial.print(firstCrabPercent);
    Serial.print("\n");  
    Serial.print(secondCrabPercent);
    Serial.print("\n");  
    Serial.print(thirdCrabPercent);
    Serial.print("\n");  
  delay(5000);
  }
}

