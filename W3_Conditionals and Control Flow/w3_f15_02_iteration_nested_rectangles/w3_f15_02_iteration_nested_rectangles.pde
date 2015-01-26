
// Algotecton - Fall 2015
// Nested Iteration

// basic graphic setup
size(300, 200);
background(255);
stroke(0);
fill(255, 0, 0);

// nested loop
for (int i  =0; i < 15; i++){
  for (int j = 0; j < 15; j++){
    rect(i*12, j*12, 10, 10);
  } 
}

