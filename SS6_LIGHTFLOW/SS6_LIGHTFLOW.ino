//SURAJ, LIGHT IS TURNED ON IN A PATTERN ON WHEN BUTTON IS PUSHED

int LED = 13;
int LED2 = 12;
int LED3 = 11;
int LED4 = 10;
int LED5 = 9;
int LED7 = 8;
int buttonPin = 2;
int buttonState = 0;

void setup() {
  pinMode(buttonPin, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED7, OUTPUT);
  
}


void loop() {
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH){
  digitalWrite(LED, HIGH);   
  delay(200);
  digitalWrite(LED2, HIGH);   
  delay(200);
  digitalWrite(LED3, HIGH);   
  delay(200);
  digitalWrite(LED4, HIGH);   
  delay(200);
  digitalWrite(LED5, HIGH);  
  delay(200);
  digitalWrite(LED7, HIGH);   
  delay(200);
  digitalWrite(LED, LOW);   
  delay(300);
  digitalWrite(LED2, LOW);  
  delay(300);
  digitalWrite(LED3, LOW); 
  delay(300);
  digitalWrite(LED4, LOW);   
  delay(300);
  digitalWrite(LED5, LOW);   
  delay(300);
  digitalWrite(LED7, LOW);
  delay(300);
  }else{
    if (buttonState == LOW){
   digitalWrite(LED, LOW);   
  delay(300);
  digitalWrite(LED2, LOW);  
  delay(300);
  digitalWrite(LED3, LOW); 
  delay(300);
  digitalWrite(LED4, LOW);   
  delay(300);
  digitalWrite(LED5, LOW);   
  delay(300);
  digitalWrite(LED7, LOW);
  delay(300);
  }
}
}
