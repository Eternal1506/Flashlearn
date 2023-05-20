void nextcard(){ // Alogorithm to determine the order of card to be displayed (adaptive learning funcition) 
  float desiredprob = 0.7;

  ArrayList<Card> cardtobechoosen = new ArrayList<Card>();

  for (Card c : cardlist){ 
    c.Correctanswerprob();
    if (c.currentprob < desiredprob){
      cardtobechoosen.add(c);
    }
  }
  if (cardtobechoosen.size() > 1){
    Card newC = pickrandomcard(cardlist.get(-1), cardtobechoosen.size(), cardtobechoosen);
    cardlist.add(newC);
  }
  else{
    Card newC = pickrandomcard(cardlist.get(-1), user_Cards.size(), user_Cards);
    cardlist.add(newC);
  }
} // Its done but needs to be checked

Card pickrandomcard(Card c, int s, ArrayList<Card> list){ // helper function for the nextcard()
  int r = int(random(s + 1));
  while (c.question.equals( list.get(r).question)){
    r = int(random(s + 1));
  }
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
    else {
      if (key != CODED){
        if (user_answer.equals("Type answer"))
          user_answer = "";
        if (abletotype)
          user_answer += key;
      }
    }
  }
}

int userRating() {
  int correct = 0;
  int total = 0;
  for (int i = 0; i < user_Cards.size(); i++) {
      int listSum = 0;
      for (int j = 0; j < user_Cards.get(i).useranswers.size(); j++)
      {
          listSum += user_Cards.get(i).useranswers.get(j);
          total ++;
      }
      correct =+ listSum;
  }
  int rating = correct/total * 100;
  return rating;
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
