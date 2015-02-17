

// GUI settings

PFont pfont = createFont("Verdana", 20, true); // use true/false for smooth/no-smooth
ControlFont font = new ControlFont(pfont,255);

ControlP5 cp5;
int knobValue = 100;
Knob bounce_value;
Knob height_value;
Range range;

void makeGUI(){
	
cp5 = new ControlP5(this);

bounce_value = cp5.addKnob("Bounciness")
               .setRange(0,100)
               .setValue(95)
               .setPosition(500, 40)
               .setRadius(30)
               //.setViewStyle(Knob.ARC)
               .setColorForeground(color(200,200, 200))
               .setColorBackground(color(150, 150, 150))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.getController("Bounciness")
     .getCaptionLabel()
     .setFont(pfont)
     .toUpperCase(false)
     .setSize(10)
     ;

  height_value = cp5.addKnob("BoxHeight")
               .setRange(5,600)
               .setValue(150)
               .setPosition(400, 40)
               .setRadius(30)
               //.setViewStyle(Knob.ARC)
              .setColorForeground(color(200,200, 200))
               .setColorBackground(color(150, 150, 150))
               .setColorActive(color(255,255,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.getController("BoxHeight")
     .getCaptionLabel()
     .setFont(pfont)
     .toUpperCase(false)
     .setSize(10)
     ;

}

void Bounciness(int theValue) {
    float r = (theValue/100.0)*(-1);
    bounciness = r;
}


void BoxHeight(int theValue) {
    float r = (theValue/100.0)*(-1);
    bboxD = theValue;
}
