
// Algotecton
// Daniel Cardoso Llach
// Parametric Column

// Column's basic parameters
int baseHeight = 30;
int shaftHeight = 300;
int capitalHeight = 30;
int diameterLow = 40;
int diameterHigh = 30;

// change rate
int rate = 8;

void setup(){
 
 ellipseMode(CENTER);
 size(800, 800);
 smooth(); 
}

void draw(){
 
  draw_column(width/2, height/2, baseHeight, shaftHeight, capitalHeight, diameterLow, diameterHigh);
  
}

void draw_column(int x, int y, int bH, int sH, int cH, int dL, int dH){
  
  background(255);

  noFill();
  stroke(0);
  strokeWeight(0.5);
  
  // construction points 
  
  //ellipse(x, y, 15, 15);  // center point
  line(x, y, x+5, y+5);
  line(x, y, x-5, y+5);
  line(x, y, x-5, y-5);
  line(x, y, x+5, y-5);
  
  // capitel
  ellipse(x-(dH/2), y-(sH/2), 10, 10);
  ellipse(x+(dH/2), y-(sH/2), 10, 10);
  ellipse(x+(dH/2) + (dH*0.3), 1.0*(y - ((sH/2)+cH)), 10, 10);
  ellipse(x-((dH/2) + (dH*0.3)), y - ((sH/2)+cH), 10, 10);
  
  // base
  ellipse(x-(dL/2)-(dL*0.3), y + (sH/2) +bH, 10, 10);
  ellipse(x+(dL/2)+(dL*0.3), y + (sH/2) + bH, 10, 10);
  ellipse(x + (dL/2), y + (sH/2), 10, 10);
  ellipse(x - (dL/2), y + (sH/2), 10, 10);
  
  strokeWeight(1);

  //draw capitel
  quad(x-(dH/2), y-(sH/2), x+(dH/2), y-(sH/2), x+(dH/2) + (dH*0.3), 1.0*(y - ((sH/2)+cH)), x-((dH/2) + (dH*0.3)), y - ((sH/2)+cH));

  // shaft
  quad(x-(dL/2), y + (sH/2), x +(dL/2), y + (sH/2), x + (dH/2), y - (sH/2), x - (dH/2), y - (sH/2));

  // base  
  quad(x-(dL/2)-(dL*0.3), y + (sH/2) +bH, x+(dL/2)+(dL*0.3), y + (sH/2) + bH, x + (dL/2), y + (sH/2), x - (dL/2), y + (sH/2));
  
}

void keyPressed(){
 
 // change column dimensions 
  
 if (key == CODED){
   if (keyCode == UP){
     shaftHeight += rate;    
   }
   if (keyCode == DOWN){
     shaftHeight -= rate;
   }
   if (keyCode == LEFT){
     diameterLow -= rate; 
   }
   if (keyCode == RIGHT){
     diameterLow += rate; 
   }
  
 }
 
 if (key == 'w'){
  diameterHigh += rate; 
 }
 if (key == 's'){
  diameterHigh-= rate; 
 }
 if (key == 'q'){
  capitalHeight += rate; 
 }
 if (key == 'a'){
   capitalHeight -= rate;
 }
 if (key == 'e'){
   if (baseHeight <= (height - 100)){
    baseHeight += rate;      
   }
 }
 if (key == 'd'){
   if (baseHeight >= 10){
    baseHeight -= rate;      
   } 
 }
  
}

