
import java.awt.event.*;

float xd, yd;
float theta = radians(90);
float r = 380;
float cameraRotationSpeed = 0;
int zoom;

int w = 500;
int h = 500;

int bboxW = 200;
int bboxH = 200;
int bboxD = 200;

float eyex = bboxW *(-1);
float eyey = bboxH *(-1);
float eyez = (bboxD *(-1)) + 70;
float targetx = bboxW/2;
float targety = bboxH/2;
float targetz = -1*(bboxD/2);

void setup(){
 smooth();
 size(w, h, P3D); 
}

void draw(){
  background(0);
  //camera(xd, yd, getWheel(), 100, 100, 100, 0, 0, 1);
  camera(eyex, eyey, eyez, targetx, targety, targetz, 0, 0, 1);
  noFill();
  strokeWeight(0.5);
  stroke(100, 100, 100);
  pushMatrix();
  translate(bboxW/2, bboxH/2, -bboxD/2);
  box(bboxW, bboxH, bboxD);
  popMatrix();
  //printcamerapos();
  stroke(255, 0, 0);
  strokeWeight(1);
  rect(0, 0, bboxW, bboxH);
  theta += cameraRotationSpeed;
  eyex = (bboxW/2) + cos(theta)*r;
  eyey = (bboxH/2) + sin(theta)*r;
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
 //eyex -= 1*(mouseX-pmouseX);
 eyez -= 1*(mouseY-pmouseY);
 camera(xd, yd, 100+(zoom*5), 300, 300, 300, 0, 0, 1); 
  
}

void printcamerapos(){
 println("x: " + eyex + ", y: " + eyey + ", z: " + eyez); 
}

void keyPressed(){
  if (key == 'r'){
   toggleCameraRotation(); 
  }
}

void toggleCameraRotation(){
  if (cameraRotationSpeed == 0){
    cameraRotationSpeed = 0.0025;
  } else{
    cameraRotationSpeed = 0;
  }
}

