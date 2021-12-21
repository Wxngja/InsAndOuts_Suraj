// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 

const int SENSOR = A0; 
const int LED1 = 10;
const int LED2 = 9;//sensor hooked up to analog pin A0
int potval = 0;

void setup() {
  pinMode (SENSOR, INPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  potval = analogRead(SENSOR); //read sensor and assign to variable called val
  potval = potval / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds

  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(potval);  //to send binary data to Processing


  if (potval >= 50){
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    
  }
  if (potval >= 100){
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, HIGH);
}
if (potval >= 190){
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, LOW);
}
if (potval >= 230){
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
}
}
