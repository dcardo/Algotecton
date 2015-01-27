
// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Nested Iteration

// basic graphic setup
size(255, 255);
background(255);
stroke(0, 0, 0);
fill(255, 0, 0);

// nested loop
for (int i  =0; i < width; i++){
  for (int j = 0; j < height; j++){
    stroke(j, i, j);
    point(i, j);
    //rect(i*12, j*12, 10, 10);
  } 
}

