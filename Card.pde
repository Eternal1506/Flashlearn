class Card {

  //field
  String question;
  String answer;
  IntList useranswers;
  float timer;
  float currentprob;
  
  //constructor
  Card (String q, String a){
    this.question = q;
    this.question = a;
  }
  
  void CheckUserAnswer(String ans){ // Function to check user answers
    if (ans.equals(this.answer)){
      this.useranswers.append(1);
    }
    else{
      this.useranswers.append(0);
    }
  }
  
  void Correctanswerprob(){ // function to figure out how many times user has answered this question correctly
      
    int cardscore = 0;
    for (int i = 0; i < this.useranswers.size(); i++){
      cardscore += this.useranswers.get(i);
    }
    this.currentprob = float(cardscore)/this.useranswers.size();
  }
}
