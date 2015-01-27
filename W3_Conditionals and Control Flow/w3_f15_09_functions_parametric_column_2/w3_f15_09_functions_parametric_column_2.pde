
// Algotecton
// Daniel Cardoso Llach
// Interactive Parametric Column

// default column dimensions
int baseHeight = 10;
int shaftHeight = 120;
int capitalHeight = 10;
int diameterLow = 30;
int diameterHigh = 25;

// change rate

int rate = 5;

void setup(){
  background(255);
  ellipseMode(CENTER);
  size(800, 800);
  smooth(); 
  draw_columns(); 
}

void draw(){
 // nothing here
}

void draw_columns(){
 // draws a grid of 8x8 with a column of random dimensions in each cell 
 background(255);  
 
 for (int i = 0; i < 8; i++){
   for (int j = 0; j < 8; j++){
     if  ((i % 2 != 0) && (j % 2 != 0)){
       // call draw_column function with random values
       draw_column(i*100, j*100, (int)random(15, 25), (int)random(40, 130), (int)random(15, 22), (int)random(15, 40), (int)random(15, 40));
     }
   } 
  }
  
}

void draw_column(int x, int y, int bH, int sH, int cH, int dL, int dH){
  // draws one column with specific dimensions and position
     
  // column proper
  strokeWeight(1);
  stroke(0);
  fill(255);

  //draw capital
  quad(x-(dH/2), y-(sH/2), x+(dH/2), y-(sH/2), x+(dH/2) + (dH*0.3), 1.0*(y - ((sH/2)+cH)), x-((dH/2) + (dH*0.3)), y - ((sH/2)+cH));

  // shaft
  quad(x-(dL/2), y + (sH/2), x +(dL/2), y + (sH/2), x + (dH/2), y - (sH/2), x - (dH/2), y - (sH/2));

  // base  
  quad(x-(dL/2)-(dL*0.3), y + (sH/2) +bH, x+(dL/2)+(dL*0.3), y + (sH/2) + bH, x + (dL/2), y + (sH/2), x - (dL/2), y + (sH/2));
  
  // construction geometry 
  draw_construction_geometry(x, y, bH, sH, cH, dL, dH);

  
}

void draw_construction_geometry(int x, int y, int bH, int sH, int cH, int dL, int dH){
  
  noFill();
  stroke(255, 0, 0, 100);
  strokeWeight(0.5);
  
 // center
  line(x, y, x+5, y+5);
  line(x, y, x-5, y+5);
  line(x, y, x-5, y-5);
  line(x, y, x+5, y-5);
  
  // capital
  ellipse(x-(dH/2), y-(sH/2), 10, 10);
  ellipse(x+(dH/2), y-(sH/2), 10, 10);
  ellipse(x+(dH/2) + (dH*0.3), 1.0*(y - ((sH/2)+cH)), 10, 10);
  ellipse(x-((dH/2) + (dH*0.3)), y - ((sH/2)+cH), 10, 10);
  
  // base
  ellipse(x-(dL/2)-(dL*0.3), y + (sH/2) +bH, 10, 10);
  ellipse(x+(dL/2)+(dL*0.3), y + (sH/2) + bH, 10, 10);
  ellipse(x + (dL/2), y + (sH/2), 10, 10);
  ellipse(x - (dL/2), y + (sH/2), 10, 10);
}

void keyPressed(){
 
 // recalculate columns 
 if (key == ' '){
   draw_columns();  
 }
  
}

