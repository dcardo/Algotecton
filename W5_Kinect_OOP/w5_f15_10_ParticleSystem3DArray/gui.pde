

void makeGUI(){
	
cp5 = new ControlP5(this);

 myKnobA = cp5.addKnob("knob")
               .setRange(0,100)
               .setValue(95)
               .setPosition(30, height - 80)
               .setRadius(30)
               //.setViewStyle(Knob.ARC)
               .setColorForeground(color(100,100,100))
               .setColorBackground(color(20, 20, 20))
               .setColorActive(color(255,0,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.getController("knob")
     .getCaptionLabel()
     .setFont(pfont)
     .toUpperCase(false)
     .setSize(10)
     ;

  myKnobB = cp5.addKnob("knob_D")
               .setRange(5,600)
               .setValue(150)
               .setPosition(100,height-80)
               .setRadius(30)
               //.setViewStyle(Knob.ARC)
               .setColorForeground(color(100,100,100))
               .setColorBackground(color(20, 20, 20))
               .setColorActive(color(255,0,0))
               .setDragDirection(Knob.HORIZONTAL)
               ;
  cp5.getController("knob_D")
     .getCaptionLabel()
     .setFont(pfont)
     .toUpperCase(false)
     .setSize(10)
     ;

}

void knob(int theValue) {
    float r = (theValue/100.0)*(-1);
    bounciness = r;
}


void knob_D(int theValue) {
    float r = (theValue/100.0)*(-1);
    bboxD = theValue;
}
