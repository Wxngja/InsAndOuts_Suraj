

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int potval=0; // creates variable for data coming from serial port
int x = 400;
int c = 255;

void setup() {
  size(1080, 720);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    potval = myPort.read(); 
    background(137, 207, 240);
    // rect(random(x),random(x), val,val);
    //fill(random(c),random(c),random(c));
    println (potval);
  }
  if (potval >= 50) {
    fill(255, 204, 0);
    circle(900, 100, 150);
    //ellipse(random(x),random(x),val,val);
    //fill(random(c),random(c),random(c));
    println (potval);
  }
  if (potval >= 100) {
    fill(201, 182, 14);
    rect(0, 500, 1080, 500);
    println (potval);
  }
  if (potval >= 150) {
    fill(58,149,239);
    rect(0, 300, 1080, 200);
    fill(255, 255, 255);
    noStroke();
    ellipse(100 + 50, 50 + 10, 70, 50);
    ellipse(100 + 30, 50 + 30, 120, 70);
    ellipse(100 + 10, 50 + 40, 100, 50);
    println (potval);
  }
  if (potval >= 190) {
    noStroke();
    ellipse(500 + 50, 150 + 10, 70, 50);
    ellipse(500 + 30, 150 + 30, 120, 70);
    ellipse(500 + 10, 150 + 40, 100, 50);
    println (potval);
  }
  if (potval >= 230) {
    noStroke();
    ellipse(300 + 50, 120 + 10, 70, 50);
    ellipse(300 + 30, 120 + 30, 120, 70);
    ellipse(300 + 10, 120 + 40, 100, 50);
    println (potval);
  }
}
