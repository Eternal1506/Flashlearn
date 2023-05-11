void nextcard(){ // Alogorithm to determine the order of card to be displayed (adaptive learning funcition) 
  float desiredprob = 0.7;

  ArrayList<Card> cardtobechoosen = new ArrayList<Card>();

  for (Card c : cardlist){ 
    c.Correctanswerprob();
    if (c.currentprob < desiredprob){
      cardtobechoosen.add(c);
    }
  }
  Card newC = pickrandomcard(cardlist.get(-1), cardtobechoosen.size(), cardtobechoosen);
  cardlist.add(newC);
} // Its done but needs to be checked

Card pickrandomcard(Card c, int s, ArrayList<Card> list){ // helper function for the nextcard()
  int r = int(random(s + 1));
  while (c.question.equals( list.get(r).question)){
    r = int(random(s + 1));
  }
  return list.get(r);
}
