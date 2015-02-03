
// size of the array
int numSpots = 10;

// array declaration
Spot[] spots = new Spot[numSpots];

void setup(){
  size(200, 200);
  smooth();
  noStroke();
  
  // iterating to create spots 
  for (int i = 0; i<spots.length; i++){
     float x = 10 + i*16; 
     spots[i] = new Spot(x, 50, 16, random(0.5, 1));
  }
}

void draw(){
  background(0);
  for (int i = 0; i < spots.length; i++){
    spots[i].move();
    spots[i].display();
  }
}

