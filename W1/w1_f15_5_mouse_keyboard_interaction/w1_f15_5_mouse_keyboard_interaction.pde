
/* 
Algorithmic tectonics
Daniel Cardoso Llach
Fall 2015
Week 1 Samples
*/

// Mouse and keyboard interaction
void setup(){
  size(300, 300);
  background(255);
  stroke(0.25);
  fill(255, 0, 0);
}

void draw(){
  
}

// draws a ball
void mousePressed(){
  rectMode(CENTER);
  ellipse(mouseX, mouseY, 25, 25);
}

// uses keyboard to "erase" the background
void keyPressed(){
  background(255);
}



