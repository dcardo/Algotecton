float rectangleX = 0;
float rectangleY = 0;
float rectangleW = 20;
float rectangleH = 20;
float backgroundColor = 255;
float change = 0.1;

void setup(){
  size(500, 500);
  fill(0);
  smooth();  
}

void draw(){
  background(backgroundColor);
  rect(rectangleX, rectangleY, rectangleW, rectangleH);
  rectangleX = rectangleX + change;
  rectangleY = rectangleY + change;
  change +=0.2;
}

