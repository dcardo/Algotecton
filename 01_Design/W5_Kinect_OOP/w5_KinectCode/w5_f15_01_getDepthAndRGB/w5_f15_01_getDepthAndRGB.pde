import SimpleOpenNI.*;
SimpleOpenNI context;  //declare SimpleOpenNI object , name:kinect

void setup(){  
  size(640*2,480);
  context= new SimpleOpenNI(this); //instantiate the SimpleOpenNI instance 
  context.enableDepth();    // call method "enableDepth"
  context.enableRGB();      // call method "enableRGB"
} 


void draw(){
  context.update();
  image(context.depthImage(),0,0); //draw depthimage at 0,0  cf) image(name,x,y)
  image(context.rgbImage(),640,0);  //draw depthimage at 640,0
}

