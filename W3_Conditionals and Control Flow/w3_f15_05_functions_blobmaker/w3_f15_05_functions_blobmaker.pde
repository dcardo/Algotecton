

// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Functions

void setup(){
  size(300, 300);
  stroke(0);
  fill(255);
}

void draw(){
  // nothing here
}

void create_blob(){
  
 // when called this function draws an ellipse of random size and color
 int sizex = (int)random(5, 100);
 int sizey = (int)random(5, 100);
 int posx = (int)random(sizex/2, width-(sizex/2));
 int posy = (int)random(sizey/2, height-(sizey/2)); 
 fill(random(0, 255), random(0, 255), random(0, 255));
 ellipse(posx, posy, sizex, sizey);
  
}

void keyPressed(){
  
  // when space bar is pressed, all is erased
  if (key == ' '){
    background(200); 
  }
  
}

void mousePressed(){
 
 // the function is called when the mouse is clicked
 create_blob(); 
  
}
