
// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions, OOP

Particle my_part;

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
  my_part = new Particle((int)random(0, width), (int)random(0, height), 5, 4);
}

void draw(){
  background(100);
  my_part.bounce();
  my_part.move();
  my_part.display();
}
