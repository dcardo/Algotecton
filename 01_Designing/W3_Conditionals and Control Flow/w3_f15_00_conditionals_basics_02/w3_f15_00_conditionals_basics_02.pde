
// Algotecton
// Daniel Cardoso Llach
// From Shiffman's Learning Processing

void setup(){
 size(200,200);
}

void draw(){
  if (mouseX < width/3){
    background(255);
  } else if (mouseX < 2*width/3){
    background(227);
  } else {
    background(0);
  }
}

