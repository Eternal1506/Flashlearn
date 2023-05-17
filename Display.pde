void mainmenu(){
  state = "menu";
  start.setVisible(true);
  next.setVisible(false);
  previous.setVisible(false);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(false);
}

void makecard(){
  background(255);
  state = "make";
  start.setVisible(false);
  next.setVisible(true);
  previous.setVisible(true);
  Remove.setVisible(true);
  Add.setVisible(true);
  typemake.setVisible(true);
  submit.setVisible(true);
}

void studycards() {
  background(255);
  state = "study";
  start.setVisible(false);
  next.setVisible(true);
  previous.setVisible(true);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(true);
  currentcard = 0;
}
void startScreen() {
 if (startX < 300) {
  rectMode(CORNER);
  //Text
  background(0);
  textAlign(CENTER);
  fill(red);
  textSize(100);
  text("FlashLeArn",startX,startY);
  
  //Underline
  rect(startX-260,startY+20,520,25);
  
  //Circle around the "A" in Learn
  noFill();
  strokeWeight(6);
  stroke(255,25,50);
  circle(startX+128,startY-30,80);
  
  //Plus symbol
  fill(red);
  rect(startX+160,startY-85,1,13);
  rect(startX+154,startY-80,13,1);

   startX += 4;
 }
}
