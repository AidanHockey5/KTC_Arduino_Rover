//Button - D2
//Trig - D5
//Echo - D6

//In4 - A0, In3 - A1, In2 - A2, In1 - A3
// FWD - 0x09
// BWK - 0x06
// LEFT - 0x0A
// RIGHT - 0x05


bool isOn = false;
int button = 2;
int trig = 5;
int echo = 6;
int reactDist = 30; //Centimeters
void setup() 
{
  Serial.begin(115200);
  pinMode(button, INPUT_PULLUP);
  pinMode(trig, OUTPUT);
  pinMode(echo, INPUT);
  DDRC = 0xFF;
  PORTC = 0x00;
  attachInterrupt(digitalPinToInterrupt(2), OnOff, FALLING);
}

unsigned long prevMillis = 0;
void OnOff()
{
  unsigned long currentMillis = millis();
  if(currentMillis - prevMillis >= 100)
  {
    prevMillis = currentMillis;
     isOn = !isOn;
     if(!isOn)
       Stop();
     randomSeed(currentMillis); 
  }
}

unsigned long Distance()
{
  digitalWrite(echo, LOW);
  digitalWrite(trig, LOW);
  delayMicroseconds(2);
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  unsigned long echoValue = pulseIn(echo, HIGH);
  if(echoValue == 0)
    return 0;
  unsigned long d = echoValue / 58.138;
  return d;
}

void Forward()
{
  PORTC = 0x09;
}

void Backward()
{
  PORTC = 0x06; 
}

void Left()
{
  PORTC = 0x0A;
}

void Right()
{
  PORTC = 0x05;
}

void Stop()
{
  PORTC = 0x00;
}

void Maneuver()
{

//TURN UNTIL OUT-OF-RANGE METHOD
//    while(Distance() <= reactDist)
//    {
//      Left();
//      delay(150);
//      Stop();
//      delay(50);
//    }

//RANDOM DIRECTION METHOD
  int rng = random(0, 4);
  switch(rng)
  {
    case 0:
    Left();
    delay(150);
    Stop();
    delay(150);
    break;
    case 1:
    Right();
    delay(150);
    Stop();
    delay(150);
    break;
    case 2:
    Backward();
    delay(150);
    Stop();
    delay(150);
    Left();
    delay(150);
    break;
    case 3:
    Backward();
    delay(150);
    Stop();
    delay(150);
    Right();
    delay(150);
    break;
  }
}

void loop() 
{
  Serial.println(Distance());
  delay(100);
}
