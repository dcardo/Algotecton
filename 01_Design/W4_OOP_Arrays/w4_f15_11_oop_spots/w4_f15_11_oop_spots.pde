Spot my_spot;

void setup(){
  size(200, 200);
  smooth();
  noStroke();
  my_spot = new Spot(33, 50, 30);
}

void draw(){
  background(0);
  my_spot.display();
}

class Spot{
  float x, y, diameter;
  Spot(float xpos, float ypos, float dia){
    x = xpos;
    y = ypos;
    diameter = dia;
  }
  void display(){
    ellipse(x, y, diameter, diameter);
  }
}

