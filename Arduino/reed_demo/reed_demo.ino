/******************************************************************************
Reed_Switch_Example.ino
Example sketch for SparkFun's Reed Switch
  (https://www.sparkfun.com/products/8642)
Jim Lindblom @ SparkFun Electronics
May 3, 2016

The reed switch is a two-terminal, magnetically-actuated, normally-open switch.
Connect one end of the switch to ground, and the other to Arduino's D2 pin.

The D2 pin's internal pull-up resistor is used to bias the pin high. When the
switch closes, the pin should go low.

Development environment specifics:
Arduino 1.6.7
******************************************************************************/
const int REED_PIN1 = 2; // Pin connected to reed switch
const int REED_PIN2 = 3; // Pin connected to reed switch
const int LED_PIN = 13; // LED pin - active-high

void setup() 
{
  Serial.begin(9600);
  // Since the other end of the reed switch is connected to ground, we need
  // to pull-up the reed switch pin internally.
  pinMode(REED_PIN1, INPUT_PULLUP);
  pinMode(REED_PIN2, INPUT_PULLUP);
  pinMode(LED_PIN, OUTPUT);
}

void loop() 
{
  int mag1 = digitalRead(REED_PIN1); // Read the state of the switch
  int mag2 = digitalRead(REED_PIN2); // Read the state of the switch
  if (mag1 == LOW || mag2 == LOW) // If the pin reads low, the switch is closed.

    {
      Serial.println("Switch closed");
      digitalWrite(LED_PIN, HIGH); // Turn the LED on
    }
    else
    {
      digitalWrite(LED_PIN, LOW); // Turn the LED off
    }
}
