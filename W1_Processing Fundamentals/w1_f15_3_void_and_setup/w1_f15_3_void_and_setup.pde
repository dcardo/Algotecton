/* 
Algorithmic tectonics
Daniel Cardoso Llach
Fall 2015
Week 1 Samples
*/

// basic interactivity: void and setup

// setup method runs once.
void setup(){
  size(300, 300);
  smooth();
}

// draw method runs continuously
void draw(){
  background(255);
  triangle(50, 50, 30, 130, 100, 100);
  
  // using system variables to create basic interactivity
  triangle(50, 50, mouseX, mouseY, 100, 100);
}

