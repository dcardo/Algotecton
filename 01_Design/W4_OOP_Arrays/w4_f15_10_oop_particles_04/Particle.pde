class Particle{
  
  // data
  float posx, posy, incrementx, incrementy, diameter;
  
  // constructor
  Particle(float xpos, float ypos, float xincrement, float yincrement, float diam){
   if ((posx > diam/2) || (posx < (width-diam/2))){
    posx = xpos;
   } else{
    posx = random(diam/2, width-(diam/2)); 
   }
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
    if ((posx > (width-diameter/2)) || (posx < (diameter/2))){
    incrementx *= -1;
    } 
    if ((posy > (height-diameter/2))||(posy<(diameter/2))){
    incrementy *= -1; 
    }  
  }
  
}


