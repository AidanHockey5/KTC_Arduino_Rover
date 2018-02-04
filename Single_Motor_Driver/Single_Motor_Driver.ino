int bFwd = 8; //Buttons
int bBck = 9;
void setup() 
{
  pinMode(bFwd, INPUT_PULLUP);
  pinMode(bBck, INPUT_PULLUP);
  DDRC = 0x03; //0b00000011;
}

void loop() 
{
  if(!digitalRead(bFwd) && digitalRead(bBck))
    PORTC = 0x01; //0b00000001;
  else if(!digitalRead(bBck) && digitalRead(bFwd))
    PORTC = 0x02; //0b00000010;
  else
    PORTC = 0x00;
}
