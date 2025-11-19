//positionen af cirkel

float x, y;
float xspeed= random(3);
float yspeed= random(3);
rect//
float rxOne=20, ryOne;
float rHeight=150, rWidth=20;
//cirklens diameter
int dia=40;

void setup() {
  size(800, 700);
  x=width/2;
  y=height/2;
  ryOne=height/2;

  rectMode(CENTER);
}

void draw() {
  background(34, 267, 44);
  circle(x, y, dia);

  rect(rxOne, mouseY, rWidth, rHeight);

  x=x+xspeed;
  y=y+yspeed;
  if (x>width ||x<0) {
    xspeed=xspeed*-1;
  }
  if (y>height ||y<0) {
    yspeed=yspeed*-1;
  }


}
