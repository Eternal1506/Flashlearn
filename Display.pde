int time;
// x = 300;

color red = color(255,25,50);

void mainmenu(){
  state = "menu";
  start.setVisible(true);
  //next.setVisible(false);
  //back.setVisible(false);
  //songSelection.setVisible(true);
  //exit.setVisible(false);
  //backToMenu.setVisible(false);
  //volumeLabel.setVisible(false);
}

void makecard(){
  background(255);
  state = "make";
  start.setVisible(false);
  //next.setVisible(false);
  //back.setVisible(false);
  //songSelection.setVisible(true);
  //exit.setVisible(false);
  //backToMenu.setVisible(false);
  //volumeLabel.setVisible(false);
}
void startScreen() {
    rectMode(CORNER);
    //Text
    background(0);
    textAlign(CENTER);
    fill(red);
    textSize(100);
    text("FlashLeArn",x,y);
    
    //Underline
    rect(x-260,y+20,520,25);
    
    //Circle around the "A" in Learn
    noFill();
    strokeWeight(6);
    stroke(255,25,50);
    circle(x+128,y-30,80);
    
    //Plus symbol
    fill(red);
    rect(x+160,y-85,1,13);
    rect(x+154,y-80,13,1);
  
   x += 0.5;
 
}
