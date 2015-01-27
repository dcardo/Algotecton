

// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions

int posx = 0;
int posy = 0;
int incrementx = 5;
int incrementy = 2;

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
  posx = (int)random(0, width);
  posy = (int)random(0, height);
}

void draw(){
  background(200);

  if ((posx > width) || (posx < 0)){
    incrementx *= -1;
  } 
  if ((posy > height)||(posy<0)){
    incrementy *= -1; 
  }
  
  posx = posx + incrementx;
  posy = posy + incrementy;
  ellipse(posx, posy, 5, 5);

  
}

void keyPressed(){
  
  // when space bar is pressed, all is erased
  if (key == ' '){
    background(200); 
  }
  
}
