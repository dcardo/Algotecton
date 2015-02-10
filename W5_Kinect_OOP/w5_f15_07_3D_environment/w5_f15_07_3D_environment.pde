/* arc497c code by daniel cardoso ll.
   Fall 2012
   
   Illustrates Object Oriented Programming and a simple
   simulation interface.
*/ 

import java.awt.event.*;

// size of the array
int numParticles = 2;
int dia = 1;
int zoom;
float xd, yd;

// arrays declaration

Particle[] particles = new Particle[numParticles];
Button[] buttons = new Button[3];

void setup(){
  size(500, 500, P3D);
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
  camera(xd, yd, getWheel(), 0, -100, 0, 0, 0, 1);
  for (int i = 0; i < particles.length; i++){
    particles[i].move();
    particles[i].display();
    particles[i].rollover();
  }
  strokeWeight(0.3);
  box(45);
  controls();  
}

// camera control methods

int getWheel(){
 addMouseWheelListener(new MouseWheelListener() {
  public void mouseWheelMoved(MouseWheelEvent e){
   zoom+=e.getWheelRotation(); 
  }
 }); 
 return(zoom);
}

void mouseDragged(){
 xd += mouseX-pmouseX;
 yd += mouseY-pmouseY;
 camera(xd, yd, 100+(zoom*5), 300, 300, 300, 0, 0, 1); 
  
}

