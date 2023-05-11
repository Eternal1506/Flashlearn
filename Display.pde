int time;
void startScreen() {
  rectMode(CORNER);
  //Text
  background(0);
  textAlign(CENTER);
  fill(255,25,50);
  textSize(100);
  text("FlashLeArn",300,150);
  
  //Underline
  rect(40,160,520,25);
  
  //Circle around the "A" in Learn
  noFill();
  strokeWeight(6);
  stroke(255,25,50);
  circle(428,120,80);
  
  //Plus symbol
  fill(255,25,50);
  rect(460,65,1,13);
  rect(454,70,13,1);
 
}
