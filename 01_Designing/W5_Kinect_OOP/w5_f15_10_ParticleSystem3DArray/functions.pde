

void initiate(){
 for (int i = 0; i < particles.length; i++){
  particles[i] = new Particle3D(bboxW/2, bboxH/2, -bboxD/2, 3, random(-speed_range, speed_range), random(-speed_range, speed_range), random(-speed_range, speed_range));
 }
}

void runSim(){

  // initializes the particles in the simulation
  // display
  for (int i = 0; i < particles.length; i++){
   particles[i].display();
  }
  // check for 'switch' values (boolean)
  // connections between points
  if (connect){
    connect();   
  }
  // move (after connec to avoid inconsistencies)
  for (int i = 0; i < particles.length; i++){
     particles[i].move();
   }
  // camera rotation, assign speed
  if (camerarotate){
    cameraRotationSpeed = 0.010; 
  }
  else{
    cameraRotationSpeed = 0;
  }
  // center point 
  point(bboxW/2, bboxH/2, -bboxD/2);
  stroke(0, 255, 0);
}

void display_data(){

  // information display 
  fill(255);
  text("Cube", 30, 30);
  fill(200);

  text("Camera rotation: " + (int) eyex + ", " + (int) eyey + ", " + eyez, 30, 70);
  text("Number of particles: " + particles.length, 30, 85);
  text("Gravity: " + gravity, 30, 100);
  text("Bounciness: " + bounciness, 30, 115);

  // keys help
  text("'a' -> add a particle  ", 30, 500);
  text("'s' -> removes a particle  ", 30, 515);
  text("'c' -> toggles connections  ", 30, 530);
  text("'r' -> toggles camera rotation  ", 30, 545);
  text("'g' -> toggles gravity  ", 30, 560);
}

int getWheel(){
  
// gets the mouse's wheel rotation value, assigns it to the r value 
//(the distance from the camera to the target)

 addMouseWheelListener(new MouseWheelListener() {
  public void mouseWheelMoved(MouseWheelEvent e){
   zoom+=e.getWheelRotation(); 
   zoom = constrain(zoom, 100, 10000);
   r = 1000 - (zoom/10);
  }
 }); 
 return(zoom);
}


void mouseDragged(){

 // gets the value of the mouseDragged and uses it to change the z 
 // position of the camera.

 if (mouseY < (w-80)){
  eyez -= 1*(mouseY-pmouseY);
  camera(xd, yd, 100+(zoom*5), 300, 300, 300, 0, 0, 1); 
  }
}

void printcamerapos(){

  // just for debugging

  println("x: " + eyex + ", y: " + eyey + ", z: " + eyez); 
}

void keyPressed(){
  // manages keyboard input
  if (key == 'r'){
   toggleCameraRotation(); 
  }
  // connect dots
  if (key == 'c'){ 
    connect = !connect;
  }
  // restarts the simulation
  if (key == ' '){
    initiate();
  }
  // adds a particle
  if (key == 'a'){
    Particle3D p = new Particle3D(bboxW/2, bboxH/2, -bboxD/2, 3, random(-10, 10), random(-10, 10), random(-10, 10));
    particles = (Particle3D[]) append(particles, p);
  }
  // removes last particle
  if (key == 's'){
    if (particles.length > 0){
      particles = (Particle3D[]) shorten(particles);  
    }
  }
  // toggles gravity
  if (key == 'g'){
    toggleGravity();
  }
}
  

void connect(){
  
  // connects the particles in order
  
  strokeWeight(connectStrokeWeight);
  stroke(connectStrokeColor);
  for (int i = 0; i < particles.length-1; i++){
    line(particles[i].x, particles[i].y, particles[i].z, particles[i+1].x, particles[i+1].y, particles[i+1].z); 
  } 
}

void toggleCameraRotation(){
  
  // stops or starts the camera rotation
  
  camerarotate = !camerarotate; 
  println(camerarotate);
}

void toggleGravity(){
  
  // toggles gravity
  
  if (gravity > 0){
    gravity = 0;
  } else {
    gravity = 0.3;
  }
}

void rotateCamera(float speed){
  
  // assigns a speed to the camera rotation.
  // when 0 the camera is static
  
  cameraRotationSpeed = speed;
}

