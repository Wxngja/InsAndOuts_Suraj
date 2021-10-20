//TRIVIA TIME!!!!! Suraj Jagmohan
/*
Things to do:
- Clean up the user interface
- Score out of 5!
- Background Music
- Questions
- MORE THINGS COMING AS I WORK ON IT

*/

import processing.sound.*;
SoundFile file;
String gameState;
PImage bg;
int Rainbow;
int Score;
int questions;



void setup() {
  size(1000, 1000);
  gameState = "START";
  rectMode(CENTER);
  textAlign(CENTER);
  colorMode(HSB);
}
void draw() {
  backgroundMenu();
  if (gameState == "START") {
    startGame();
  } else if (gameState == "OBJECTIVE") {
    objective();
  } else if (gameState == "MENU") {
    menu();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "WIN") {
    winGame();
  } else if (gameState == "LOSE") {
    loseGame();
  }
}
void startGame() {
  textSize(36);
  text("Welcome to Suraj's trivia night", width/2, height/2);
  text("When ready hit the 'P' key to begin", 500, 540);
  text("To read the objective hit the 'O' key", 500, 580);
  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      gameState = "PLAY";
    } else if (key == 'o' || key == 'O') {
      gameState = "OBJECTIVE";
    }
  }
}
void playGame() {
  text("Question 1",500,100);
  if (key == 'e' || key == 'E') {
    gameState = "START";
  }
}
void winGame() {
}
void loseGame() {
}
void objective() {
  text("MAIN OBJECTIVE", 500, 500);
  text("- GET ALL 5 QUESTIONS TO WIN", 500, 540);
  text("- GET ONE QUESTION WRONG YOU RESTART", 500, 580);
  text("PRESS E TO RETURN TO THE MAIN MENU", 500, 980);
  if (key == 'e' || key == 'E') {
    gameState = "START";
  }
}
void menu() {
}

void backgroundMenu() {
  background(color(Rainbow, Rainbow, Rainbow));
  Rainbow++;
  delay(20);
  if (Rainbow > 255) {
    Rainbow = 0;
  }
}
