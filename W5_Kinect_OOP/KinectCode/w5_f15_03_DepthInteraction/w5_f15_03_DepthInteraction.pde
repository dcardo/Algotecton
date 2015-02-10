import SimpleOpenNI.*;
SimpleOpenNI kinect;

int xPos=100;
int yPos=100;
int myPos=xPos+(yPos*640);;

void setup() {  
  size(640, 480);
  kinect = new SimpleOpenNI(this);  
  kinect.enableDepth();
  ellipseMode(CENTER);
}

void draw(){  
  background(0);  
  kinect.update();
  image(kinect.depthImage(),0,0);
  fill(255,255,0);
  int[] depthValues = kinect.depthMap();
  println(myPos);
  // Queries for the depth in 3-D space in 
  // the chosen position 'myPos.' The practical result
  // is that if an object is with in a certain distance of the 
  // sensor at the specified position, the circle changes color.  
  if(depthValues[myPos]>300 && depthValues[myPos]<1000){ 
     fill(255,0,0); 
   }
   ellipse(xPos,yPos,30,30); 
 } 
 
 

