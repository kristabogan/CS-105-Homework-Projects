class Step {
  Note[] step;
  boolean curstep = false;
  
  Step(int NumNotes, TriOsc[] osc, float freq[], float colX, float colY, float colW, float colH) {
    step = new Note[NumNotes];
      for (int i = 0; i < NumNotes; i++) {
       step[i] = new Note(osc[i], freq[i], colX, (colY + (colH/NumNotes)*i), colW, colH/NumNotes);
    }
}

  void click() {
     for (int i = 0; i < step.length; i++) {
      step[i].click();
      }
  }
  void display() {
      for (int i = 0; i < step.length; i++) {
      if(curstep == true) {
        strokeWeight(5);
      } else if(curstep == false) {
        strokeWeight(0);
      }
  step[i].display();
      }
  }
  void play() {
    for (int i = 0; i < step.length; i++) {
      step[i].play();
      }
  }
  
  void changeCurstep() {
    if(curstep == true) {
      curstep = false;
    }
    if(curstep == false){
      curstep = true;
    }
  }
}
