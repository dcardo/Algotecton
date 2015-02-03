class Button {
 
 // data
 // test test 
 float posx = 0;
 float posy = 0;
 float w = 0;
 float h = 0;
 boolean on = false;

 // constructor
 Button(float x, float y, float tempW, float tempH){
  posx = x;
  posy = y;
  w = tempW;
  h = tempH;
  on = false; 
 } 
 
 // methods
 void display(){
   stroke(255);
   strokeWeight(0.5);
   rectMode(CENTER);
   if (on){
     fill(200);
   }else{
     fill(0); 
   }
   rect(posx, posy, w, h);
 }
 
 void click(int mx, int my){
    if ((mx > (posx-(w/2))) && (mx < (posx+(w/2))) && (my > (posy-(h/2))) && (my < (posy+(h/2)))){
       on = !on; 
     }
   }
}
