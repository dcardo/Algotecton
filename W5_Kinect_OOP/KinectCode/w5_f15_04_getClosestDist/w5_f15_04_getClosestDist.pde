import SimpleOpenNI.*;
SimpleOpenNI context;

int closestValue=100;
int closestX,closestY;

void setup(){
 size(640,480);
 strokeWeight(3);
 context = new SimpleOpenNI(this);
 context.enableDepth(); 
}

void draw(){
 closestValue = 8000; //assign first value big enough to find closest point 
 context.update();
 image(context.depthImage(),0,0);
 
 int[] depthValue = context.depthMap(); //to get distance
 
 for(int i=0;i<480;i++){ 
  for(int j=0;j<640;j++){
   int currentValue= depthValue[i*640+j];  
   if(currentValue>0 && currentValue<closestValue){
    closestValue = currentValue;
    closestX=j;
    closestY=i; 
   }
 }
 } 
 
 noFill();
 stroke(255,0,0);
 ellipse(closestX, closestY, 20,20); 

}
