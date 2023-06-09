void mainmenu() { // setting buttons and values for startscreen
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
  restart.setVisible(false);
}

void makecard() { // setting buttons and values for card making
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
  restart.setVisible(false);
}

void studycards() { // setting buttons and values for letting user study the cards
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
  restart.setVisible(false);
}
void startquiz() { // setting buttons and values for quizing the user
  state = "quiz";
  start.setVisible(false);
  next.setVisible(false);
  previous.setVisible(false);
  Remove.setVisible(false);
  Add.setVisible(false);
  typemake.setVisible(false);
  submit.setVisible(false);
  diff_time.setVisible(false);
  difficulty.setVisible(false);
  currentcard = 0;
  easy.setVisible(false);
  hard.setVisible(false);
  check.setVisible(true);
  restart.setVisible(false);
  randomizelist(user_Cards, cardlist);

}
void startScreen() { // displays the start screen
 if (startX < 300){
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

void showrating() { // setting buttons and values for rating screen
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
  restart.setVisible(true);
}

void ratingscreen(int rate) { //displays the rating screen
    rectMode(CENTER);
    textAlign(CENTER);
    //show rating and feedback
    if (rate <= 80 && rate > 60){
      background(200, 223, 50);
      text("Question Right: " + int(correct), width/2, height/5, width/2, 100);
      text("Total Questions Answered: " + int(total), width/2, 2 * height/5, width, 100);
      text("Accuracy: " + rate + "%", width/2, 3 * height/5, width, 100);
      text("Average, not bad", width/2, 4 * height/5, width, 100);
    }
    else if (rate <= 60){
      background(252, 70, 3);
      text("Question Right: " + int(correct), width/2, height/5, width/2, 100);
      text("Total Questions Answered: " + int(total), width/2, 2 * height/5, width, 100);
      text("Accuracy: " + rate + "%", width/2, 3 * height/5, width, 100);
      text("You might need to work harder :(", width/2, 4 * height/5, width, 100);
    }
    else{
      background(40, 252, 3);
      text("Question Right: " + int(correct), width/2, height/5, width/2, 100);
      text("Total Questions Answered: " + int(total), width/2, 2 * height/5, width, 100);
      text("Accuracy: " + rate + "%", width/2, 3 * height/5, width, 100);
      text("That's pretty good :)", width/2, 4 * height/5, width, 100);
    }
}

void congratsScreen() { // the reward the screen
  background(40, 252, 3);
  textAlign(CENTER);
  fill(0);
  textSize(24);
  text("Congratulations! You got " + answerstreak * questsRightInaRow + " questions correct in a row!",width/2,height/2);
}
