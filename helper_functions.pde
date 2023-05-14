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
