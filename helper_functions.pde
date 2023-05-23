void nextcard(){ // Alogorithm to determine the order of card to be displayed (adaptive learning funcition) 
  float desiredprob = 0.7;

  cardbel = new ArrayList<Card>();
  cardabv = new ArrayList<Card>();

  for (Card c : user_Cards){ 
    c.Correctanswerprob();
    if (c.currentprob < desiredprob){
      cardbel.add(c);
    }
    else{
      cardabv.add(c);
    }
  }
  float ran = random(0,1);
  if (ran > 0.3){
    
    if (cardbel.size() > 1){
      Card newC = pickrandomcard(cardlist.get(cardlist.size()-1), cardbel.size(), cardbel);
      cardlist.add(newC);
    }
    else{
      Card newC = pickrandomcard(cardlist.get(cardlist.size()-1), user_Cards.size(), user_Cards);
      cardlist.add(newC);
    }
  }
  else {
    if (cardabv.size() > 1){
      Card newC = pickrandomcard(cardlist.get(cardlist.size()-1), cardabv.size(), cardabv);
      cardlist.add(newC);
    }
    else{
      Card newC = pickrandomcard(cardlist.get(cardlist.size()-1), user_Cards.size(), user_Cards);
      cardlist.add(newC);
    }
  }
} // Its done but needs to be checked

Card pickrandomcard(Card c, int s, ArrayList<Card> list){ // helper function for the nextcard()
  int r = int(random(s));
  int n = 0;
  while (c.question.equals(list.get(r).question) && n < 100){
    r = int(random(s));
    n++;
  }
  if (n >= 100)
    return user_Cards.get(r);
  else
    return list.get(r);
}

void keyPressed() {
   //If the backspace key is pressed, removes the last character in the string
  if (state == "make"){
    if (key == BACKSPACE ){
      if (typingquestion){
        if (!user_Cards.get(currentcard).question.equals(""))
          user_Cards.get(currentcard).question =  user_Cards.get(currentcard).question.substring(0, user_Cards.get(currentcard).question.length()-1);
      }
      else{
        if (!user_Cards.get(currentcard).answer.equals(""))
          user_Cards.get(currentcard).answer = user_Cards.get(currentcard).answer.substring(0, user_Cards.get(currentcard).answer.length()-1);
      }
    }
    else if (key == ENTER){
      if (typingquestion){
        typemake.setText("Type Question");
      }
      else{
        typemake.setText("Type Answer");
      }
       typingquestion = !typingquestion;
    }
    else {
      // Otherwise, concatenate the String
      // Each character typed by the user is added to the end of the String variable.
      if (state == "make"){
        if (key != CODED){
          if (typingquestion){
            if (user_Cards.get(currentcard).question.equals("Type question"))
              user_Cards.get(currentcard).question = "";
            user_Cards.get(currentcard).question += key;
          }
          else{
            if (user_Cards.get(currentcard).answer.equals("Type answer"))
              user_Cards.get(currentcard).answer = "";
            user_Cards.get(currentcard).answer += key;
          }
        }
      }
    }
  }
  else if (state == "quiz"){
    if (key == BACKSPACE ){
        if (!user_answer.equals("") && abletotype)
          user_answer =  user_answer.substring(0, user_answer.length()-1);
    }
    else if( key == ENTER){
      runtimer = false;
      checkanswer();
      next.setVisible(true);
    }
    else {
      if (key != CODED){
        if (user_answer.equals("Type Answer"))
          user_answer = "";
        if (abletotype)
          user_answer += key;
      }
    }
  }
}

int userRating() {
  float correct = 0;
  float total = 0;
  for (int i = 0; i < user_Cards.size(); i++) {
      int listSum = 0;
      for (int j = 0; j < user_Cards.get(i).useranswers.size(); j++)
      {
          listSum += user_Cards.get(i).useranswers.get(j);
          total ++; //<>//
      }
      correct += listSum;
  }
  int rating = round(correct/total * 100);
  return rating; //<>//
}

IntList index;
void randomizelist(ArrayList<Card> c1, ArrayList<Card> c2 ){
   index = new IntList();
  for( int i = 0; i < c1.size(); i++){
    index.append(i);
  }
  index.shuffle();
  for (int i = 0; i < c1.size(); i++){
    c2.add(c1.get(index.get(i)));
  }
}
void timer(){
  timer = int(millis()/ 1000 - timerStart);     // counts up from the start time (0)
  countDown = int (countDownStart - timer);
  text ("Time left: " + countDown ,300,35);
  if (countDown == 0){
    runtimer = false;
    checkanswer();
    next.setVisible(true);
  }
}
void checkanswer(){
  
  cardlist.get(currentcard).CheckUserAnswer(user_answer);
  abletotype = false;
  if (cardlist.get(currentcard).answer.equals(user_answer)){
    background(0,255,0);
    cardlist.get(currentcard).displayCard();
  }
  else{
    background(255,0,0);
    user_answer = "Correct answer: " + cardlist.get(currentcard).answer;
    cardlist.get(currentcard).displayCard();
  }
  
}
