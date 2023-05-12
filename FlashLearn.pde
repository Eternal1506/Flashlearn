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
    animationSpeed = (width-paddingx)/animationTime;    //Calculated Speed to be used in animation
}

void draw(){
  //Initialize variables
  if (mainmenu)
  {
      startScreen();
  }
}



void displayCard(String text)
{
    paddingxCopy+=animationSpeed;
    if (paddingxCopy <= width-paddingx)
    {
        background(255, 255, 255);
        rect(width/2, height/2, round(width-2*paddingxCopy), round(height - paddingy));    //animation of flipping the card
    }
    else
    {
        fill(0);
        text(text, width/2, height/2, 3*width/4, height-2*paddingy);    //display the question
    }
}
