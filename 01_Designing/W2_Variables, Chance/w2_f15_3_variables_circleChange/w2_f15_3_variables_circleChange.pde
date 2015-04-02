
// the circle's size
int circleSize = 0;



void setup(){
  size(500,500);
  strokeWeight(0.2);
  smooth();
  background(175, 200, 200); 
}

void draw(){
  
  // the circle moves with the mouse, and draws its size from the variable
  ellipse(mouseX, mouseY, circleSize, circleSize);

  // variable increment 
  circleSize = circleSize+1;
}

void mousePressed(){
  // just for fun, revert the size to 0 when mouse is clicked
  circleSize = 0;
 }

void keyPressed(){
 // just for fun, change
  noLoop();
}
