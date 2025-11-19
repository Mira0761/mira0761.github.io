
void setup() {
  size(1500, 1000);
  rectMode(CENTER);
}
void draw() {
  background(137, 207, 240);
  tissemand(200,300);
tissemand(700,300);
tissemand(1200,300);
}
void tissemand(int x,int y){
    krop(x,y);
  ansigt(x,y);
  mund(x,y);
  næse(x,y);
  øjne(x,y);
  toppenafpoppen(x,y);
    støvleH(x+110, y+440, radians(-30));
  støvleV(x-135, y+440, radians(28));
}
void støvleH(float x,float y,float angle){
  pushMatrix();           
  translate(x, y);        
  rotate(angle);         
  rect(0, 0, 60, 80);//støvle-1
 rect(40,15,60,50);//støvle-2
  popMatrix();            
}
void støvleV(float x,float y,float angle){
  pushMatrix();
  translate(x,y);//ændre nulpunkt
  rotate(angle);//roter om nye nulpunkt
  rect(40,-15,60,80);//støvle-1
  rect(0,0,60,50);//støvle-2
  popMatrix();
}
void torso(int x,int y){
  fill(252, 252, 240);
  ellipse(x, 450, 290, 220);//torso
  fill(0);
  circle(x,470,30);//knap-1
  circle(x,520,30);//knap-2
}
void arme(int x,int y){
armH(x,y);
armV(x,y);
}
void armV(int x,int y){
   strokeWeight(16);// tyk
  stroke(71, 55, 32);
  line(x-100,450,x-190,400);//v-1
  line(x-155,420,x-170,380);//v-2
  line(x-155,420,x-190,430);//v-3
 strokeWeight(1);// normal
 stroke(0);//normal
}
void armH(int x,int y){
  strokeWeight(16);// tyk
  stroke(71, 55, 32);
  line(x+100,450,x+200,400);//h-1
line(x+150,425,x+200,430);//h-2
line(x+150,425,x+175,380);//h-3
 strokeWeight(1);// normal
 stroke(0);//normal
}
void ben(int x,int y){
  fill(252, 252, 240);
  ellipse(x, 590, 350, 280);//ben
}
void krop(int x,int y){
  ben(x,y);
  torso(x,y);
  arme(x,y);
}
void toppenafpoppen(int x,int y) {
 fill(0);
  rect(x, 180, 290, 30);//hat-vand
  rect(x, 80, 180, 200);//hat-lod
}
void mund(int x,int y) {
 fill(246, 250, 175);
  arc(x, 330, 150, 200, 0, PI, CHORD);//tis-mund
}
void ansigt(int x,int y) {
  fill(252, 252, 240);
  circle(x, 300, 290);//ansigt

}
void næse(int x,int y) {
 fill(255, 127, 80);
  circle(x, 300, 50);//næse
}
  void øjne(int x,int y) {
 fill(71, 55, 32);
  rect(x-60, 260, 40, 40);//lort-øje-v
  rect(x+60, 260, 40, 40);//lort-øje-h
}
