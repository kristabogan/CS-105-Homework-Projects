class Note {
  float x;
  float y;
  float w;
  float h;
  float f;
  boolean active = false;
  TriOsc osc;
  
  // Note Constructor
  Note(TriOsc osc, float tempFreq, float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    f = tempFreq;
    active = false;
    this.osc = osc;
    osc.freq(f);
  } 
  
  void display() {
    stroke(0);
 
    if (active == true) {
      fill(0);
    } else {
      fill(255);
    }
    
    rect(x,y,w,h); 
    fill(255,0,0);
    
  }
  void click() {
    if ((mouseX > x && mouseX < x + w) && (mouseY > y && mouseY < y + h)) {
        if(active == true) {
          active = false;
        } else if(active == false) {
          active = true;
        }
     } 
  }

  void play() {
    if (active == true) {
        osc.play();
     } else {
        osc.stop();
  }
}
}
