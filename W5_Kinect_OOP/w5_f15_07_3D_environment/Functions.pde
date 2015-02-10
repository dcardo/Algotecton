void initiate(){
  for (int i = 0; i<particles.length; i++){
     float x = random(0, 300);
     float y = random(0, 300); 
     float z = random(0, 300);
     particles[i] = new Particle(x, y, z, dia, random(-10, 10), random(-10, 10), random(-10,10));
  }
}

void connect(){
  
 strokeWeight(0.3);
 for (int i = 0; i < particles.length-1; i++){
    line(particles[i].x, particles[i].y, particles[i+1].x, particles[i+1].y);
 }
 
}

void controls(){
  
  // activates and assigns funcionaliy to buttons.
  
  for (int i = 0; i < buttons.length; i++){
   buttons[i].display(); 
  }
  
  if (buttons[0].on){
    // draws connecting lines between particles
    connect();  
  }
  if (buttons[1].on){
    gravityOff();
  } else {
    gravityNormal(); 
  }
  if (buttons[2].on){
    haloOn(); 
  } else {
    haloOff(); 
  }
}

void disturb(){
  
  // disturbs the system by randomly changing the particles' speed
  
  for (int i = 0; i<particles.length; i++){
    particles[i].spX = random(-10, 10);
    particles[i].spY = random(-10, 0);
  }
}

void gravityOff(){
  for (int i = 0; i<particles.length; i++){
    particles[i].gravity = 0;
  } 
}

void gravityNormal(){
  for (int i = 0; i<particles.length; i++){
    particles[i].gravity = 0.3;
  } 
}

void haloOn(){
  for (int i = 0; i<particles.length; i++){
    particles[i].halo = true;
  } 
}

void haloOff(){
  for (int i = 0; i<particles.length; i++){
    particles[i].halo = false;
  } 
}

void mousePressed(){
  
  // when mouse is pressed, check if any button was activated. 
  
 for (int i = 0; i < buttons.length; i++){
  buttons[i].click(mouseX, mouseY); 
 }
}

void keyPressed(){
  
  // additional functionality via keyboard
 
 if (key ==  ' '){
  initiate();
 } 
 
 if (key == 'd'){
   disturb();
 }
 
 if (key == 'a'){
   Particle s = new Particle(random(0, width), random(0, height), random(0, 300), dia, random(0.2, 3), random(0, 3), random(0, 3)); 
   particles = (Particle[]) append(particles, s);
 } 
 
 if (key == 'r'){
   particles = (Particle []) shorten(particles);
 }
}
