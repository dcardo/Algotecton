
// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions, OOP

Particle my_part_a;
Particle my_part_b;
Particle my_part_c;

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
  my_part_a = new Particle((int)random(0, width), (int)random(0, height), (int)random(1, 5), (int)random(1, 5), (int)random(2,20));
  my_part_b = new Particle((int)random(0, width), (int)random(0, height), (int)random(1, 5), (int)random(1, 5), (int)random(2,20));
  my_part_c = new Particle((int)random(0, width), (int)random(0, height), (int)random(1, 5), (int)random(1, 5), (int)random(2,20));
}

void draw(){
  background(100);
  
  my_part_a.bounce();
  my_part_a.move();
  my_part_a.display();
  
  my_part_b.bounce();
  my_part_b.move();
  my_part_b.display();
  
  my_part_c.bounce();
  my_part_c.move();
  my_part_c.display();
}
