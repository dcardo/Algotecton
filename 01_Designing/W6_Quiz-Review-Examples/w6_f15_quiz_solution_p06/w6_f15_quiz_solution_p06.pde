int x = 0;
int y = 50;
int s = 1;

void setup(){
 size(200, 200);
 smooth(); 
}

void draw(){
  background(255);
  move();
  bounce();
  drawCar(x, y, 50, color(50, 50, 10));
}
void move(){
 x = x + s; 
}
void bounce(){
 if ((x >= width) || (x <= 0)){
  s *= -1; 
 }
}
void drawCar(int x, int y, int size, color c){
 int o = size/4;
 rectMode(CENTER);
 stroke(200); 
 fill(c);
 rect(x, y, size, size/2);
 fill(200);
 rect(x-o, y-o, o, o/2);
 rect(x+o, y-o, o, o/2);
 rect(x-o, y+o, o, o/2);
 rect(x+o, y+o, o, o/2); 
}

