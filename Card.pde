class Card {
  //field
  String question;
  String answer;
  IntList useranswers;    //stores if the answer from the user is right or wrong
  int timer;
  float currentprob;
  
  //constructor
  Card (String q, String a) {
    this.question = q;
    this.answer = a;
    this.timer = 20;
    this.useranswers = new IntList();
  }
  
  void CheckUserAnswer(String ans) { // Function to check user answers
    if (ans.equals(this.answer)){
      this.useranswers.append(1);
    }
    else{
      this.useranswers.append(0);
    }
  }
  
  void Correctanswerprob() { // function to figure out how many times user has answered this question correctly
      
    int cardscore = 0;
    for (int i = 0; i < this.useranswers.size(); i++){
      cardscore += this.useranswers.get(i);
    }
    this.currentprob = float(cardscore)/this.useranswers.size();
  }
   
  void displayCard() {    //display function of cards
    rectMode(CENTER);
    textAlign(CENTER);
    textFont(f);

    strokeWeight(3);
    fill(255);
    rect(width/2, height/2, round(width-2*paddingxCopy), round(height - paddingy));    //Card box
    rect(width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //Question part box
    rect(width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //Answer part box
    if (state == "make"){
    if (typingquestion) // Highlight the question if user is typing question
      fill(0,0,200);
    else
      fill(0);
    }
    else {
      fill(0);
    }
        
    text(this.question, width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //display the question
    if (state == "make"){
      if (!typingquestion)
        fill(0,0,200);
      else
        fill(0);
    }
    else{
      fill(0);
    }
    if (state != "quiz"){
      text(this.answer, width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //display the correct answer
    }
    else{
      text(user_answer, width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //show the answer form the user
    }
  }
}
