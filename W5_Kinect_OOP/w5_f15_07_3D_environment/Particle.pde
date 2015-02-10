class Particle{

  // data
  
  float x, y, z, diameter;
  float spX, spY, spZ;
  float gravity = 0.3;
  boolean halo = false;
  boolean mouse = false;
  
  // constructor
  
  Particle(float xpos, float ypos, float zpos, float dia, float speedX, float speedY, float speedZ){
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
    x = constrain(x, (diameter/2)-2, width-(diameter/2)+2);
    y = constrain(y, -1000, height-(diameter/2));
    z = constrain(z, (diameter/2)-2, 600);
    
    if (y < (height-(diameter/2))){ 
      spY += gravity;
    }
    if (y >= (height-(diameter/2))){
      spY *= -0.95;
    }
    if ((x > (width-(diameter/2)) || (x < (diameter/2)))){
      spX *= -0.95; 
    } else{ 
    }
  }
  
  void rollover(){
    if ((mouseX > x-(diameter*5)) && (mouseX < x + (diameter*5)) && (mouseY > y - (diameter*5)) && (mouseY < y + (diameter*5))){
      //println("rollover"); 
      spX = 0;
      spY = 0;
      gravity = 0;
      mouse = true;
    } 
  }
    
  void display(){
    stroke(255);
    if (halo){
      stroke(200);
      strokeWeight(0.5);
      noFill();
      ellipse(x, y, diameter*10, diameter*10);
      stroke(255);
      ellipse(x, y, diameter, diameter); 
    } else if (!halo) {
        strokeWeight(1);
        ellipse(x, y, diameter, diameter);
    }
  }
}
