//TRIVIA TIME!!!!! Suraj Jagmohan, Most code was referenced from Processing website and previous assignments worked on in class
/*
Things to do:
- Plan on making all the keyPressed into buttons for cleaner UI(COMPLETE)
- Clean up the user interface^^^^
- Score out of 5! (COMPLETE)
- Background Music(WILL SCRAP)
- Questions (COMPLETE)
*/

import processing.sound.*;
SoundFile file;
String gameState;
PImage bg;
PImage bg2;
PImage bg3;
PImage bg4;
PImage bg5;
PImage pq1;
PImage pq2;
PImage pq3;
PImage pq4;
PImage pq5;
int Rainbow;
int Score = 0;
int Lives = 0;
int Plus = 0;
//int questions;
int x = 1000;
int c = 255;
int attempts = 0;
int sattempts = 0;



void setup() {
  size(1000, 1000);
  gameState = "START";
  rectMode(CENTER);
  textAlign(CENTER);
  colorMode(HSB);
  bg = loadImage("bg.jpg");
  bg2 = loadImage("bg2.jpg");
  bg3 = loadImage("bg3.jpg");
  bg4 = loadImage("bg4.jpg");
  bg5 = loadImage("bg5.png");
  pq1 = loadImage("pq1.png");
  pq2 = loadImage("pq2.png");
  pq3 = loadImage("pq3.png");
  pq4 = loadImage("pq4.png");
  pq5 = loadImage("pq5.png");
}
void draw() {
  if (gameState == "START") {
    startGame();
  } else if (gameState == "OBJECTIVE") {
    objective();
  } else if (gameState == "CORRECT") {
    Correct();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "WIN") {
    winGame();
   } else if (gameState == "WRONG") {
    Wrong();
  } else if (gameState == "LOSE") {
    loseGame();
  }
}
void startGame() {
  backgroundMenu();
  textSize(36);
  text("Welcome to Suraj's trivia night", 500, 400);
  rect(300, 600, 250, 150);
  text("Start Quiz", 300, 600);
  rect(700, 600, 250, 150);
  text("Objective", 700, 600);
  noFill();
  textSize(24);
  text("Current Trivia Attempts: " + attempts, 500,450);
  //text("When ready hit the 'P' key to begin", 500, 540);
  //text("To read the objective hit the 'O' key", 500, 580);
  textSize(36);
  if (mousePressed) {
    //if (key == 'p' || key == 'P') {
     if(mouseX > 175 && mouseX < 425 && mouseY > 525 && mouseY < 675){
      gameState = "PLAY";
      attempts = attempts +1;
    }else if (mouseX > 550 && mouseX < 750 && mouseY > 575 && mouseY < 675) {
      gameState = "OBJECTIVE";
    }
  }
}
void playGame() {
  if (Score == 0){
  Question1();
  }else if (Score == 1){
  Question2();
  }else if (Score == 2){
  Question3();
  }else if (Score == 3){
  Question4();
  }else if (Score == 4){
  Question5();
  }else if (Score == 5){
  Congratulations();
  }if (Lives == 1){
   loseGame();
  }if (Plus  == 1){
    winGame();
  }
}

  /*if (key == 'e' || key == 'E') {
    gameState = "START";
  }
*/
 void mousePressed(){
   println(Score);
  if(Score == 0 && mouseX > 350 && mouseX < 650 && mouseY > 575 && mouseY < 625){
    Plus = 1;
    print("Question 1, Answered correctly");
  }else if(Score == 0 && mouseX > 350 && mouseX < 650 && mouseY > 645 && mouseY < 695){
    Lives = 1;
  }else if(Score == 0 && mouseX > 350 && mouseX < 650 && mouseY > 715 && mouseY < 765){
    Lives = 1;
  }else if(Score == 0 && mouseX > 350 && mouseX < 650 && mouseY > 785 && mouseY < 835){
    Lives = 1;
    
  }
  if(Score == 1 && mouseX > 350 && mouseX < 650 && mouseY > 575 && mouseY < 625){
    Lives = 1;
  }else if(Score == 1 && mouseX > 350 && mouseX < 650 && mouseY > 645 && mouseY < 695){
    Lives = 1;
  }else if(Score == 1 && mouseX > 350 && mouseX < 650 && mouseY > 715 && mouseY < 765){
    Plus = 1;
    print("Question 2, Answered correctly");
  }else if(Score == 1 && mouseX > 350 && mouseX < 650 && mouseY > 785 && mouseY < 835){
    Lives = 1;
    
  }
  if(Score == 2 && mouseX > 350 && mouseX < 650 && mouseY > 575 && mouseY < 625){
    Lives = 1;
  }else if(Score == 2 && mouseX > 350 && mouseX < 650 && mouseY > 645 && mouseY < 695){
    Lives = 1;
  }else if(Score == 2 && mouseX > 350 && mouseX < 650 && mouseY > 715 && mouseY < 765){
    Lives = 1;
  }else if(Score == 2 && mouseX > 350 && mouseX < 650 && mouseY > 785 && mouseY < 835){
    Plus = 1;
    print("Question 3, Answered correctly");
    
  }
  if(Score == 3 && mouseX > 350 && mouseX < 650 && mouseY > 575 && mouseY < 625){
    Lives = 1;
  }else if(Score == 3 && mouseX > 350 && mouseX < 650 && mouseY > 645 && mouseY < 695){
    Lives = 1;
  }else if(Score == 3 && mouseX > 350 && mouseX < 650 && mouseY > 715 && mouseY < 765){
    Plus = 1;
    print("Question 4, Answered correctly");
  }else if(Score == 3 && mouseX > 350 && mouseX < 650 && mouseY > 785 && mouseY < 835){
    Lives = 1;
    
  }
  if(Score == 4 && mouseX > 350 && mouseX < 650 && mouseY > 575 && mouseY < 625){
    Lives = 1;
  }else if(Score == 4 && mouseX > 350 && mouseX < 650 && mouseY > 645 && mouseY < 695){
    Plus = 1;
    print("Question 5, Answered correctly");
  }else if(Score == 4 && mouseX > 350 && mouseX < 650 && mouseY > 715 && mouseY < 765){
    Lives = 1;
  }else if(Score == 4 && mouseX > 350 && mouseX < 650 && mouseY > 785 && mouseY < 835){
    Lives = 1;
    
  }
 }

  
void Question1(){
  background(bg);
  text("Score:" + Score + "/5",900,900);
  text("Question 1",500,100);
  text("What game is the character in the image below from?",500,150);
  image(pq1, 400, 250); 
  rect(500, 600, 300, 50);
  rect(500, 670, 300, 50);
  rect(500, 740, 300, 50);
  rect(500, 810, 300, 50);
  text("Uncharted", 500, 610);//correct
  text("Pokemon", 500, 680);
  text("God of War", 500, 750);
  text("The Last of Us", 500, 820);
  noFill();
}
void Question2(){
  background(bg2);
  text("Score:" + Score + "/5",900,900);
  text("Question 2",500,100);
  text("What is the name of the brand of the logo below?",500,150);
  image(pq2, 400, 250); 
  rect(500, 600, 300, 50);
  rect(500, 670, 300, 50);
  rect(500, 740, 300, 50);
  rect(500, 810, 300, 50);
  text("Xbox", 500, 610);
  text("Nintendo", 500, 680);
  text("Playstation", 500, 750);//correct
  text("Microsoft", 500, 820);
  noFill();
}
void Question3(){
  background(bg3);
  text("Score:" + Score + "/5" ,900,900);
  text("Question 3",500,100);
  text("What is the name of the brand of the logo below?",500,150);
  image(pq3, 400, 250); 
  rect(500, 600, 300, 50);
  rect(500, 670, 300, 50);
  rect(500, 740, 300, 50);
  rect(500, 810, 300, 50);//correct
  text("Adidas", 500, 610);
  text("Jordan", 500, 680);
  text("Under Armour", 500, 750);
  text("Nike", 500, 820);
  noFill();
}
void Question4(){
  background(bg4);
  text("Score:" + Score + "/5" ,900,900);
  text("Question 4",500,100);
  text("What anime is the character below from?",500,150);
  image(pq4, 400, 250); 
  rect(500, 600, 300, 50);
  rect(500, 670, 300, 50);
  rect(500, 740, 300, 50);
  rect(500, 810, 300, 50);//correct
  text("Yu-Gi-Oh", 500, 610);
  text("Digimon", 500, 680);
  text("Pokemon", 500, 750);
  text("Naruto", 500, 820);
  noFill();
}
void Question5(){
  background(bg5);
  text("Score:" + Score + "/5" ,900,900);
  text("Question 5",500,100);
  text("Who is the founder of brand below?",500,150);
  image(pq5, 400, 250); 
  rect(500, 600, 300, 50);
  rect(500, 670, 300, 50);//correct
  rect(500, 740, 300, 50);
  rect(500, 810, 300, 50);
  text("Jeff Bezos", 500, 610);
  text("Elon Musk", 500, 680);
  text("Bill Gates", 500, 750);
  text("Steve Jobs", 500, 820);
  noFill();
}
void winGame() {
  Score = Score + 1;
  Plus = 0;
  gameState = "CORRECT";
}
void loseGame() {
  text("YOU LOSE",500,500);
  Score = 0;
  Lives = 0;
  gameState = "WRONG";
  println("You lost, try again");
}
void objective() {
  backgroundMenu();
  text("MAIN OBJECTIVE", 500, 500);
  text("- GET ALL 5 QUESTIONS TO WIN", 500, 540);
  text("- GET ONE QUESTION WRONG YOU RESTART", 500, 580);
  //text("PRESS E TO RETURN TO THE MAIN MENU", 500, 980);
  rect(500, 900, 300, 100);
  text("Return to Menu", 500, 900);
   if (mousePressed) {
    //if (key == 'p' || key == 'P') {
     if(mouseX > 350 && mouseX < 650 && mouseY > 850 && mouseY < 950){
    gameState = "START";
  }
}}
void Correct() {
  background(bg2);
  text("CORRECT", 500, 500);
  text("Press N to continue to next question", 500, 530);
  if (key == 'n' || key == 'N') {
    gameState = "PLAY";
  }
}

void Congratulations(){
  backgroundMenu();
  textSize(36);
  text("CONGRATULATIONS FOR SCORING A 5/5 ON THIS QUIZ", 500,500);
  //text("Press Z to return to the main menu", 500,550);
  rect(500, 600, 300, 100);
  text("Return to Menu", 500, 600);
  //if (key == 'z' || key == 'z') {
    if(mousePressed){
    if(mouseX > 350 && mouseX < 650 && mouseY > 550 && mouseY < 650){
    gameState = "START";
    Score = 0;//score returns to 0 on win
  }
}
  }
void Wrong(){
  background(bg4);
  textSize(36);
  text("SCORE:" + Score, 500, 570);
  text("WRONG", 500, 500);
  textSize(20);
  text("Press X to return to the menu and try again", 500, 530);
  if (key == 'x' || key == 'X') {
    gameState = "START";
  }
}

void backgroundMenu() {
  background(color(Rainbow, Rainbow, Rainbow));//random
  Rainbow++;
  delay(20);
  if (Rainbow > 255) {
    Rainbow = 0;
  }
}
