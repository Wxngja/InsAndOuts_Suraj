//Abstract Shape and Colors(WARNINGG!!!!!!!!! FLASHING COLORS!!!!!!), Suraj Jagmohan, Just click your mouse for rectangles, click a random key on keyboard for circles.

int s = 1000;
int c = 255;
float bg = 0.0;

void setup(){
  size (1000,1000);
}

void draw(){
  background(0,0,0);
  if (mousePressed == true){
    rect(random(s),random(s), random(s),random(s));
    fill(random(c),random(c),random(c));
    delay(400);
  }else if (keyPressed == true){
    ellipse(random(s),random(s),random(s),random(s));
    fill(random(c),random(c),random(c));
   }else{
    background(191,80,117);


  }
  delay(400);
}
