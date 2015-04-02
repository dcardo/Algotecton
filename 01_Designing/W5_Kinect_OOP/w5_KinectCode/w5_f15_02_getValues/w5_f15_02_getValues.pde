import SimpleOpenNI.*;
SimpleOpenNI context;

void setup(){
 size(640*2,480);
 stroke(5);
 context = new SimpleOpenNI(this);

 context.enableDepth();
 context.enableRGB();
 
}

void draw(){
  context.update();
  PImage depthImage = context.depthImage();
  PImage rgbImage = context.rgbImage();
  image(depthImage,0,0);
  image(rgbImage,640,0);
}

void mousePressed(){
  //get color value
  color c= get(mouseX,mouseY);
  println("r:"+red(c)+" g: "+ green(c) + " b: "+ blue(c)); //print R,G,B values
  
  //draw small circle where mouse is pressed
  noFill();
  stroke(255,0,0);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,15,15);
  
  //get distant from context to point
  int[] depthValues = context.depthMap();  //assign depth value to an array called depthValues
  int clickPosition = mouseX +(mouseY*640);
  int clickedDepth = depthValues[clickPosition];
  float inches = clickedDepth/25.4;
  
  if(mouseX <= 640){
    println("depth mm: " +clickedDepth);
    println("depth inches: " +inches);
  }
  else{
     println("depth is not available");
  }
}
