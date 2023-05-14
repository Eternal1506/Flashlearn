import g4p_controls.*;
String state;
boolean mainmenu = true;
boolean drawCard = false;
ArrayList<Card> user_Cards = new ArrayList<Card>();    //ArrayList of all cards from user
float animationTime = 5;
float animationSpeed;    //time (in seconds) the animation takes
float paddingx =50;
float paddingy = 100;
float paddingxCopy = paddingx;
ArrayList<Card> cardlist = new ArrayList<Card>();
float desiredprob = 0.7;
int startX, startY;
color red = color(255,25,50);
int numcard=1;
int currentcard = 0;

void setup(){
    size(600, 600);
    startX = -(width/2);
    startY = (height/4);
    frameRate(60);
    rectMode(CENTER);
    createGUI();
    animationSpeed = (width-paddingx)/animationTime;    //Calculated Speed to be used in animation
    mainmenu();
}

void draw(){

  //Initialize variables
  if (state == "menu"){
     startScreen();
  }
  if (state == "make"){
    
    if( numcard > user_Cards.size()){
      int n = abs(numcard-user_Cards.size());
      for(int i = 0; i < n; i++){
        Card c = new Card("question","answer");
        user_Cards.add(c);
      }
    }
    if (numcard != 0){
      user_Cards.get(currentcard).displayCard();
    }
  }
}
