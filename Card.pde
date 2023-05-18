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
    this.answer = a;
    this.timer = 30;
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
   
  void displayCard(){
    rectMode(CENTER);
    textAlign(CENTER);
    textFont(f);
    
    //if (paddingxCopy <= width - paddingx)
    //  paddingxCopy++;
    strokeWeight(3);
    fill(255);
    rect(width/2, height/2, round(width-2*paddingxCopy), round(height - paddingy));    
    rect(width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);
    rect(width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);

    if (typingquestion)
      fill(0,0,200);
    else
      fill(0);
        
    text(this.question, width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //display the question
    
    if (!typingquestion)
      fill(0,0,200);
    else
      fill(0);
      
    text(this.answer, width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //display the answer

  } 
}
