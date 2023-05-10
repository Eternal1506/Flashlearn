class Card {

  //field
  String question;
  String answer;
  ArrayList<int> useranswers = new ArrayList<int>();
  float timer;
  float currentprob;
  
  //constructor
  Card (String q, String a){
    this.question = q;
    this.question = a;
  }
  
  //void switchingAnimation(float speed, float px, float py)    //Animation of flipping the flashcard
  //{
  //    px+=speed;
  //    if (px <= width-px)
  //    {
  //        background(255, 255, 255);
  //        rect(px, 50, round(width-2*px), round(height - py));
  //    }
  //}
  
  void CheckUserAnswer(String ans){ // Function to check user answers
    if (ans.equals(this.answer)){
      this.useranswers.add(1);
    }
    else{
      this.useranswers.add(0);
    }
  }
  
  void Correctanswerprob(){ // function to figure out how many time user has answered this question correctly
      
    int cardscore = 0;
    for (int i = 0; i < this.useranswers.size(); i++){
      cardscore += this.useranswers.get(i);
    }
    this.currentprob = float(cardscore)/this.useranswers.size();
  }
}
