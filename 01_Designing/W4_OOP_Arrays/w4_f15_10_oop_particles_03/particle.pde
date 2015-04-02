class Particle{
  
  // data
  int posx, posy, incrementx, incrementy, diameter;
  
  // constructor
  Particle(int xpos, int ypos, int xincrement, int yincrement, int diam){
   posx = xpos;
   posy = ypos;
   incrementx = xincrement;
   incrementy = yincrement;
   diameter = diam;
  }
  
  // methods
  void move(){
    posx = posx + incrementx;
    posy = posy + incrementy;
  }
  
  void display(){
    ellipse(posx, posy, diameter, diameter);
  }
  
  void bounce(){
    if ((posx > width) || (posx < 0)){
    incrementx *= -1;
    } 
    if ((posy > height)||(posy<0)){
    incrementy *= -1; 
    }  
  }
  
}


