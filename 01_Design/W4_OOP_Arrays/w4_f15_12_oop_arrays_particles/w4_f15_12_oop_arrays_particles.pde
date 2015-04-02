/* 

  Algotecton f15
  Daniel Cardoso Llach
   
   Illustrates Object Oriented Programming and a simple
   simulation interface.
*/ 

// size of the array
int numParticles = 2;
int dia = 1;

// arrays declaration
Particle[] particles = new Particle[numParticles];
Button[] buttons = new Button[3];

void setup(){
  size(500, 500);
  smooth();
  stroke(200);
  noFill();
  frameRate(30);
  
  buttons[0] = new Button(10, 10, 10, 10);
  buttons[1] = new Button(25, 10, 10, 10);
  buttons[2] = new Button(40, 10, 10, 10);
  
  initiate();
}

void draw(){
  background(0);
  for (int i = 0; i < particles.length; i++){
    particles[i].move();
    particles[i].display();
    particles[i].rollover();
  }
  controls();  
}


