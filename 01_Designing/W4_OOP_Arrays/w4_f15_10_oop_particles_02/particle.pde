class Particle{
  
  // data
  int posx, posy, incrementx, incrementy;
  
  // constructor
  Particle(int xpos, int ypos, int xincrement, int yincrement){
   posx = xpos;
   posy = ypos;
   incrementx = xincrement;
   incrementy = yincrement; 
  }
  
  // methods
  void move(){
    posx = posx + incrementx;
    posy = posy + incrementy;
  }
  
  void display(){
    ellipse(posx, posy, 5, 5);
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


