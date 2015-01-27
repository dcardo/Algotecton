
// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions, OOP, Arrays

int num_particles = 300;
Particle[] particles = new Particle[num_particles];

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
  // initializing all particles
  for (int i = 0; i<particles.length; i++){
     float x = random(0, width);
     float y = random(0, height); 
     particles[i] = new Particle(x, y, random(-2, 2), random(-2, 2), random(2,20));
  }
}

void draw(){
  background(100);
  
  for (int i = 0; i < particles.length; i ++){
   particles[i].bounce();
   particles[i].move();
   particles[i].display(); 
  }
}
