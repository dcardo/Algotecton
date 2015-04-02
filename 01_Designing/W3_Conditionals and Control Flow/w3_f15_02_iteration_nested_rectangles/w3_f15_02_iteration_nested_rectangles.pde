
// Algotecton - Fall 2015
// Daniel Cardoso Llach
// Nested Iteration

// basic graphic setup
size(300, 200);
background(255);
stroke(0);
fill(255, 0, 0);

// nested loop
for (int i  =0; i < 25; i++){
  for (int j = 0; j < 20; j++){
    rect(i*12, j*12, 10, 10);
  } 
}

