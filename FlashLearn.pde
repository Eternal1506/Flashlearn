import g4p_controls.*;
String state;
String user_answer = "Type answer";
boolean mainmenu = true;
boolean drawCard = false;
boolean typingquestion = true;
boolean abletotype = true;
boolean runtimer = true;
ArrayList<Card> user_Cards = new ArrayList<Card>();    //ArrayList of all cards from user
ArrayList<Card> cardlist = new ArrayList<Card>();
ArrayList<Card> cardbel = new ArrayList<Card>();
ArrayList<Card> cardabv = new ArrayList<Card>();
float animationTime = 5;
float animationSpeed;    //time (in seconds) the animation takes
float paddingx = 50;      //the horizontal distance between the card and the edge
float paddingy = 100;    //the vertical distance between the card and the edge
float paddingxCopy = paddingx;
float desiredprob = 0.7;
int startX, startY;
int numcard = 1;
int currentcard = 0;
PFont f;
color red = color(255,25,50);
int timer = 0;
int timerStart = 0;
int countDown;
int countDownStart = 20;
int answerstreak = 1;
int questsRightInaRow = 0;
float correct;    //# of questions answered correctly 
float total;    //total # of questions answered

void setup(){
  size(600, 600);
  startX = -(width/2);
  startY = (height/4);
  frameRate(60);
  rectMode(CENTER);
  createGUI();
  animationSpeed = (width-paddingx)/animationTime;    //Calculated Speed to be used in animation
  mainmenu();;
  f = createFont("Arial",25);
}

void draw(){
  //Initialize variables
  if (state == "menu"){
     startScreen();
  }
  else if (state == "make"){
    if( numcard > user_Cards.size()){
      int n = abs(numcard-user_Cards.size());
      for(int i = 0; i < n; i++){
        Card c = new Card("Type question","Type answer");
        user_Cards.add(c);
        paddingxCopy = paddingx;
      }
    }
    if (numcard != 0){
      background(255);
      user_Cards.get(currentcard).displayCard();
    }
  }
  else if ( state == "study"){
    user_Cards.get(currentcard).displayCard();
  }
  else if ( state ==  "quiz"){
    if (questsRightInaRow % 5 == 0 && questsRightInaRow != 0){ // not working rn
      start.setText("Continue");
      start.setVisible(true);
      next.setVisible(false);
      check.setVisible(false);
      congratsScreen(); 
    }
    else {
      quizfunction();
    }
  }
  else if (state == "rate"){
    int r = userRating();
    ratingscreen(r);
  }
  else{
    startScreen();
  }
}
