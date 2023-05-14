import g4p_controls.*;
String state;
boolean mainmenu = true;
boolean drawCard = false;
ArrayList<Card> AL_Card = new ArrayList<Card>();    //ArrayList of all cards from user
float animationTime = 5;
float animationSpeed;    //time (in seconds) the animation takes
float paddingx =50;
float paddingy = 100;
float paddingxCopy = paddingx;
ArrayList<Card> cardlist = new ArrayList<Card>();
float desiredprob = 0.7;
int startX, startY;
color red = color(255,25,50);
int cardButton;

void setup()
{
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
      displayCard("Question", "Answer");
  }
}

void displayCard(String q, String a)
{
    rectMode(CENTER);
    textAlign(CENTER);
    //paddingxCopy+=animationSpeed;
    //if (paddingxCopy <= width-paddingx)
    //{
    //    background(255, 255, 255);
        fill(255);
        rect(width/2, height/2, round(width-2*paddingxCopy), round(height - paddingy));    //animation of flipping the card
        rect(width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);
        rect(width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);
    //}
    //else
    //{
        fill(0);
        
        text(q, width/2, paddingy+((height-2*paddingy)/4), height/2, (height-2*paddingy)/2);    //display the question
        text(a, width/2, paddingy+(3*(height-2*paddingy)/4), height/2, (height-2*paddingy)/2);
    //}
}
