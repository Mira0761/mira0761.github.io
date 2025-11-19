int playerX=100;
int playerY=300;

int diceOne=0;//terning 1
int diceTwo=0;//terning 2
void setup() {
  size(600, 600);
  rectMode(CENTER);
  textSize(23);
}
void draw() {
  background(235, 136, 202);



 
  switch(diceOne) {
  case 1:
    sideOne(playerX, playerY);
    break;
  case 2:
    sideTwo(playerX, playerY);
    break;
  case 3:
    sideThree(playerX, playerY);
    break;
  case 4:
    sideFour(playerX, playerY);
    break;
  case 5:
    sideFive(playerX, playerY);
    break;
  case 6:
    sideSix(playerX, playerY);
    break;
  default:             // Default executes if the case names
    println("None");   // don't match the switch parameter
    break;
  }
  
    switch(diceTwo) {
    case 1:
      sideOne(playerX+100, playerY);
      break;
    case 2:
      sideTwo(playerX+100, playerY);
      break;
    case 3:
      sideThree(playerX+100, playerY);
      break;
    case 4:
      sideFour(playerX+100, playerY);
      break;
    case 5:
      sideFive(playerX+100, playerY);
      break;
    case 6:
      sideSix(playerX+100, playerY);
      break;
    default:             // Default executes if the case names
      println("None");   // don't match the switch parameter
      break;
    }
}
void mouseReleased() {
  rollDice();
   sorterTerning();

}
void rollDice() {
  fill(0);
  diceOne=(int)random(1, 7);
  diceTwo=(int)random(1, 7);
}
void sideOne(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x, y, 15);//midt
}
void sideTwo(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x-20, y-20, 15);//vTop
  circle(x+20, y+20, 15);//hBund
}
void sideThree(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x-20, y-20, 15);//vTop
  circle(x+20, y+20, 15);//midt
  circle(x, y, 15);//hBund
}
void sideFour(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x-20, y-20, 15);//vTop
  circle(x+20, y+20, 15);//hBund
  circle(x-20, y+20, 15);//vBund
  circle(x+20, y-20, 15);//hTop
}
void sideFive(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x, y, 15);//midt
  circle(x-20, y-20, 15);//vTop
  circle(x+20, y+20, 15);//hBund
  circle(x-20, y+20, 15);//vBund
  circle(x+20, y-20, 15);//hTop
}
void sideSix(int x, int y) {
  fill(184, 255, 188);
  rect(x, y, 80, 80, 20);
  fill(0);
  circle(x+20, y, 15);//hMidt
  circle(x-20, y, 15);//vMidt
  circle(x+20, y-20, 15);//vTop
  circle(x+20, y+20, 15);//hBund
  circle(x-20, y+20, 15);//vBund
  circle(x-20, y-20, 15);//hTop
}
void sorterTerning() {
  if (diceOne<diceTwo) {
    int tempDice=diceOne;//applejack = tempDice
    diceOne=diceTwo;
    diceTwo=tempDice;
  }
}
