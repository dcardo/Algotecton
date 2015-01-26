
// Algotecton - Fall 2015
// Iteration

// basic graphic setup
size(300, 200);
background(255);
stroke(0);
fill(255, 0, 0);

// variables for the rectangle's position
int rec_pos_x = 0;
int rec_pos_y = 0;

// loop
while (rec_pos_x < width){
  rect(rec_pos_x, rec_pos_y, 10, 10);
  rec_pos_x = rec_pos_x + 15;
  if (rec_pos_x > width){
   rec_pos_y = rec_pos_y + 15; 
  }
}
