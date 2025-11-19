
int sidelen=100;
int meow=10;
int squareX=width/2;
void setup() {
  size(800, 800);
  rectMode(CENTER);
}
void draw() {
  background(137, 207, 240);

  fill(200, 200, 10);
  square(squareX, 100, sidelen);
  if (mouseX<squareX) {
    squareX++;
  }
  fill(255, 141, 161);
  circle(mouseX, mouseY, meow);
}
