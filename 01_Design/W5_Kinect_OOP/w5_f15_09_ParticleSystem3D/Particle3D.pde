
class Particle3D{

  // data
  
  float x, y, z, diameter;
  float spX, spY, spZ;
  float gravity = 0.3;
  boolean halo = false;
  boolean mouse = false;
  
  // constructor
  
  Particle3D(float xpos, float ypos, float zpos, float dia, float speedX, float speedY, float speedZ){
    
    x = xpos;
    y = ypos;
    z = zpos;
    diameter = dia;
    spX = speedX; 
    spY = speedY;
    spZ = speedZ;
  }
  
  // methods
  
  void move(){
    x += spX;
    y += spY;
    z += spZ;
    
    x = constrain(x, 0, bboxW);
    y = constrain(y, 0, bboxH);
    z = constrain(z, -bboxD, 0);
    
    // normal case, accelerate
    if (z < 0) {
      spZ += gravity;
    }
    
    //bounce
    if (z >= 0){
      spZ *= -0.95; 
    }
    
    if ((x >= bboxW) || (x <= 0)){
      spX *= -0.95; 
    }
    if ((y >= bboxH) || (y <= 0)){
      spY *= -0.95; 
    }
    
    
  }
    
  void display(){
    stroke(255);
    point(x, y, z);
    }
  
}
