//Abstract Shape and Colors(WARNINGG!!!!!!!!! FLASHING COLORS!!!!!!), Suraj Jagmohan, Just click your mouse for rectangles, click a random key on keyboard for circles.
void setup(){
  size (1000,1000);
}

void draw(){
  background(0,0,0);
  if (mousePressed == true){
    rect(random(1000),random(1000), random(1000),random(1000));
    fill(random(255),random(255),random(255));
    delay(400);
  }else{
    if (keyPressed == true){
    ellipse(random(1000),random(1000),random(1000),random(1000));
    fill(random(255),random(255),random(255));


  }
  delay(400);
}
}
