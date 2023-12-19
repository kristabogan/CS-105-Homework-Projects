import processing.sound.*;
TriOsc[] triangles;

Step[] synthesizer;
float[] tones = {220, 261.63, 329.23, 440};
int bpm = 120;
int column = 4;
float count_up;
float count_down;
int steptimer;
float f;
boolean play = false;
boolean active = false;
int numNotes = 4;
int colX;
int colY;
int colW = 100;
int colH = 400;
float framerate = 2;

void setup() {
  size(600, 400);
  frameRate(framerate);
  synthesizer = new Step[column];
  triangles = new TriOsc[numNotes];
  
  for(int i = 0; i < triangles.length; i++) {
    triangles[i] = new TriOsc(this);
  }
  for (int i_col = 0; i_col < column; i_col++) {
    synthesizer[i_col] = new Step(numNotes, triangles, tones, colX, colY, colW, colH); //<>//
    colX = colX + colW;
    }
}

void draw() {
  background(255, 224, 251);

  for (int i_col = 0; i_col < column; i_col++) {
      synthesizer[i_col].display();
      synthesizer[i_col].play();
      if(frameCount % 4 == i_col) {
        synthesizer[i_col].curstep = true;
      } else {
        synthesizer[i_col].curstep = false;
      }
    }
  
  textSize(40);
  fill(0);
  text("BPM: " + bpm, 425, 50);
  textSize(18);
  text("Krista's Synthesizer :)", 425, 200);
  
}


void mouseClicked() {

  for(int i = 0; i < synthesizer.length; i++) {
    synthesizer[i].click();
  }
}

void keyPressed() {
  framerate = bpm/60;
  frameRate(framerate);
  if (key == CODED) {
    if (keyCode == UP) {
      bpm = bpm+1;
    } else if (keyCode == DOWN) {
      bpm = bpm -1;
    }
  }
}

// A Note object
