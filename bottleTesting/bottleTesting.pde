PImage[] waterBottle = new PImage[2];
// Float for transparency
float pulseTransparency = 126;
float minimumTransparency = 0;
float maximumTransparency = 255;
// Booleans to check if it has reached max
boolean reachedAlphaMax = false; // Starts at false to make sure it goes up
boolean reachedAlphaMin = true; // Starts at true so it goes up


void setup() {
  size(512, 512);
  waterBottle = new PImage[]{loadImage("waterBottle2.1.png"), loadImage("waterBottle2.2.png")};
  print(waterBottle[0].width);
  for ( int i = 0; i < waterBottle.length; i++){
     waterBottle[i].resize(waterBottle[i].width/5, waterBottle[i].height/5); 
  }
  imageMode(CENTER);
}  

void draw() {
  background(0);
  
  tint(255,255);
  image(waterBottle[0], width/2,height/2);
  
  tint(255, pulseTransparency);
  image(waterBottle[1], width/2,height/2);
  
    // Pulse max and min checker
  if (pulseTransparency >= maximumTransparency) { // If it has reached the max:
    reachedAlphaMax = true; // set the reached max variable to true
    reachedAlphaMin = false; // set the reached min variable to false
    println("reached max", pulseTransparency); // debug print
  } else if (pulseTransparency <= minimumTransparency) { // Else if it has reached min:
    reachedAlphaMax = false; // set the reached max variable to false
    reachedAlphaMin = true; // set the reached min variable to true
    println("reached min", pulseTransparency); // debug print
  } 
  
  // Changing the transparency variable
  if (reachedAlphaMin) { // If it has reached the minimum value:
    pulseTransparency = pulseTransparency + 2; // make the value bigger
  } else if (reachedAlphaMax) { // Else if it has reached the maximum value:
    pulseTransparency = pulseTransparency - 2; // make the value smaller
  }
}
