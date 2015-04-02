

// Basic Drawing Tool
// System Variables (mouseX, mouseY, pmouseX, pmouseY)

void setup(){
  size(300, 300);
  background(255);
  smooth();
}

void draw(){
  stroke(0);
  // pmouseX and pmouseY are system variables that store
  // the position of the mouse in the previous frame.
  line(pmouseX, pmouseY, mouseX, mouseY);
}

// export tif
void keyPressed() {
  if (key==' ') {
    save("this.tif");
  }
}

