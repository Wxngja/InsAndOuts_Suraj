//Suraj Jagmohan, Automatic Japan slide show.  A little slide show of Japan :D

//int t = 1000;
int m = millis();
int lt = 0;
PImage fuji;
PImage tokyo;
PImage aki;


void setup(){
  size(500,500);
  fuji = loadImage("fuji.jpg");
  tokyo = loadImage("tokyo.jpg");
  aki = loadImage("akihabara.jpg");
  
}


void draw() {

  if (millis() >= lt + 5000){//5 second interval
    image(tokyo, 0,0);
    textSize(36);
    text("Tokyo", 200, 50);
    lt = millis();
  } if(millis()>= 10000){//10 second interval
    image(fuji,0,0);
    textSize(36);
    text("Mount Fuji", 150, 50);
    lt = millis();
   }
   if (millis() >= 15000){//15 second interval
    image(aki,0,0);
    textSize(36);
    text("Akihabara", 150, 250);
    lt = millis();
  }
}
