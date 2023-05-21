void mainmenu(){
  state = "menu";
  start.setVisible(true);
  next.setVisible(false);
  previous.setVisible(false);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(false);
  diff_time.setVisible(false);
  difficulty.setVisible(false);
  easy.setVisible(false);
  hard.setVisible(false);
  check.setVisible(false);
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
  diff_time.setVisible(true);
  difficulty.setVisible(true);
  easy.setVisible(true);
  hard.setVisible(true);
  check.setVisible(false);
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
  diff_time.setVisible(false);
  difficulty.setVisible(false);
  currentcard = 0;
  easy.setVisible(false);
  hard.setVisible(false);
  check.setVisible(false);
}
void startquiz(){
  state = "quiz";
  start.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(true);
  diff_time.setVisible(false);
  difficulty.setVisible(false);
  currentcard = 0;
  easy.setVisible(false);
  hard.setVisible(false);
  check.setVisible(true);
  randomizelist(user_Cards, cardlist);

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

void showrating(){
  state = "rate";
  start.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(false);
  diff_time.setVisible(false);
  difficulty.setVisible(false);
  easy.setVisible(false);
  hard.setVisible(false);
  check.setVisible(false);
}

void ratingscreen(int rate) {
    rectMode(CORNER);
    textAlign(CENTER);
    if (rate <= 80 && rate > 60){
      background(3, 223, 252);
      text("Average....", width/2, 2 * height/3, width/2, 100);
    }
    else if (rate <= 60){
        background(252, 244, 3);
        text("You Suck!", width/2, 2 * height/3, width/2, 100);
    }
    else{
        background(40, 252, 3);
        text("That's prety good :)", width/2, 2 * height/3, width/2, 100);
    }
}
