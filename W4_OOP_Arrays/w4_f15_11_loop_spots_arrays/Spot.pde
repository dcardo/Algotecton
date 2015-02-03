class Spot{

  float x, y, diameter;
  float speed;
  int direction = 1;
  float gravity = 0.1;
  boolean mouse = false;
  
  Spot(float xpos, float ypos, float dia, float sp){
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
  
  void move(){
    y += (speed*direction*0.98);
    if (( y> (height-diameter/2)) || ( y < diameter/2)){
     direction *=-1;
    } 
  }
  
  void display(){
    ellipse(x, y, diameter, diameter);
  }
  
  void rollover(){
    if ((mouseX > x-(diameter/2)) && (mouseX < x + (diameter/2)) && (mouseY > y - (diameter/2)) && (mouseY < y + (diameter/2))){
      println("rollover"); 
    } 
  }
}
