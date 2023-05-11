void nextcard(ArrayList<Card> cardlist ){ // Alogorithm to determine the order of card to be displayed (adaptive learning funcition) 
  float desiredprob = 0.7;
  int index;
  float lowestprob = 1;
  for (int i = 0; i < cardlist.size(); i++){
    cardlist.get(i).Correctanswerprob();
    if (cardlist.get(i).currentprob < lowestprob){
      lowestprob = cardlist.get(i).currentprob;
      index = i;
    }
  }
} // the alogorithm is incomplete for now
