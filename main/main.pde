int[] windowSize = {1920, 1080};

int x;
int y;

void settings(){
  //size(windowSize[0], windowSize[1]);
  fullScreen(); 
}

void setup(){
  background(255);
  noStroke();
  fill(102);
  rectMode(CENTER);
  
  x = width;
  y = height;
}

void draw(){
  rect(x/2, y/2, x/4, y/4);
}
