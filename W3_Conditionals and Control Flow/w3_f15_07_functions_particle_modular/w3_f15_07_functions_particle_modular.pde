// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions

int posx = 0;
int posy = 0;
int incrementx = 5;
int incrementy = 1;
int ballsizex = 20;
int ballsizey = 20;

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
  posx = (int)random(ballsizex/2, width-(ballsizex/2));
  posy = (int)random(ballsizey/2, height-(ballsizey/2));
}

void draw(){
  background(200);
  move_ball();
  bounce_ball();
  display_ball();
}

void move_ball(){
  posx = posx + incrementx;
  posy = posy + incrementy;
}

void bounce_ball(){
  if ((posx > width-(ballsizex/2)) || (posx < ballsizex/2)){
    incrementx *= -1;
  } 
  if ((posy > height-(ballsizey/2))||(posy < ballsizey/2)){
    incrementy *= -1; 
  } 
}

void display_ball(){
  ellipse(posx, posy, ballsizex, ballsizey);
}
