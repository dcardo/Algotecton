
class DPoint{
 
 //data
 float posx, posy, posz, diameter;

 //constructor
 DPoint(float xpos, float ypos, float zpos, float diam){
  
  posx = xpos;
  posy = ypos;
  posz = zpos;
  diameter = diam; 
   
 }

 //methods
 
 void display(){
  
  //pushStyle();
   strokeWeight(0.5);
   stroke(255, 255, 255);
   //stroke(255, 0, 0);
   fill(255, 255, 255);
  //popStyle(); 
   
  pushMatrix();
   translate(posx, posy, posz);
   point(0,0,0);
   //sphere(diameter);
  popMatrix(); 
   
 }
 
 void change(){
   
   
 }
  
}
