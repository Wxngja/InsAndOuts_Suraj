//Suraj, Abstract Shapes and Colors using For Loops, When mouse is above half the screen color is Yellow, When below half its green. Press mouse for Squares, Press Keyboard for Cirles.

int value = 0;

void setup(){
  size (1000,1000);
}

void draw(){
  
  rollover();
  circ();
  squar();
 
}

void rollover(){
   if(mouseY > height/2){
      background(138,154,90);
  }
  if(mouseY < height/2){
      background(244,303,106);
  }
}

void circ(){
float x = random(width);
float y = random(height);
  if (keyPressed == true){
  for(float c = 250; c <= 300; c += 100){//this for loop adjust the size, and float c
  ellipse(x ,y, c, c);
  fill(random(256), random(256), random(256));
  delay(200);
   }
}
}

void squar(){
  float x = random(width);
  float y = random(height);
  if (mousePressed == true){
  for(float s = 250; s <= 300; s += 100){//this for loop adjust the size, and float s
  rect(x,y,s,s);
  fill(random(256), random(256), random(256));
  delay(200);
  
} 
}
}
