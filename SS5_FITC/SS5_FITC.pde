//Suraj, Fill in the Circle, Move mouse to the right of the screen to create circle, click on the circle to make a sqaure.

int [] r = {211,43,112};
int [] g = {135,199,45};
int [] b = {183,213,70};

void setup(){
  size(500,500);
  rectMode(CENTER);
  background(r[0],g[0],b[0]);
}

void drawCircle(){
  ellipse(250, 250, 300, 300);
  fill(r[1],g[1],b[1]);
}

void drawSquares(){
  rect(250,250,200,200);
  fill(r[2],g[2],b[2]);
}

void draw(){
  if(mouseX > width/2){
  drawCircle();
  if(mousePressed == true){
  drawSquares();
}
}
}
