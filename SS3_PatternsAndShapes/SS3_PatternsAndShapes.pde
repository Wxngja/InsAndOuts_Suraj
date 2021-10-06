//Suraj, The Abstract movement of colors and shapes, move mouse to the right to show different shapes, have mouse over the top half for the background to be white, and hover over the bottom hald for there to be a black background
int value = 0;
void setup(){
  size (1000,1000);
}
void draw(){
  float s = random(50, 100);
  float c = random(30, 50);
  float x = random(width);
  float y = random(height);
//rollover starts  
 if(mouseY > height/2){
      background(0,0,0);
  }
  if(mouseY < height/2){
      background(255,255,255);
  }
 //rollover ends
 if(mouseX > width/2){
for (float square = s; square >= 0; square -= random(100,100)) {
    rect(x, y, square, square);
    rectMode(CENTER);
    fill(random(256), random(256), random(256));
for (float circle = c; circle >= 0; circle -= random(100,100)){
    ellipse(x , y, circle, circle);
    fill(random(256), random(256), random(256));
    delay(250);
}
}
}
}
  
