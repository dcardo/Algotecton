import java.awt.event.*;
import controlP5.*;


void setup(){
 
 smooth();
 makeGUI();
 size(w, h, P3D); 
 frameRate(framerate);
 initiate();
 
 myFont = createFont(f, fsize, false);

 textFont(myFont);
 textMode(SCREEN);
 cp5.setAutoDraw(false);
}

void draw(){
  background(backgroundColor);
  camera(eyex, eyey, eyez, targetx, targety, targetz, 0, 0, 1);
  noFill();

  // draw bounding box

  strokeWeight(0.5);
  stroke(wireframeColor);
  
  pushMatrix();
  stroke(wireframeColor);
  strokeWeight(bboxStrokeWeight);
  translate(bboxW/2, bboxH/2, -bboxD/2);
  box(bboxW, bboxH, bboxD);
  popMatrix();

  // draw base square
  stroke(255, 0, 0);
  strokeWeight(1);
  //rect(0, 0, bboxW, bboxH);

  // change camera

  theta += cameraRotationSpeed;
  eyex = (bboxW/2) + cos(theta)*r;
  eyey = (bboxH/2) + sin(theta)*r;
  targetz = -1*(bboxD/2);

  // display and move all particles 
  runSim();

  hint(DISABLE_DEPTH_TEST); // this block of code solves the problem of GUI vs. 3D
  camera();
  noLights();
  getWheel();
  display_data();
  hint(ENABLE_DEPTH_TEST);
  cp5.draw();
}

