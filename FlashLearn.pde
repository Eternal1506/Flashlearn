int cardNumber;
int currentCard = 0;
int currentQuestion;
boolean drawCard = false;
ArrayList<Card> AL_Card = new ArrayList<Card>();    //ArrayList of all cards from user
float animationTime = 5;
float animationSpeed;    //time (in seconds) the animation takes
float paddingx =50;
float paddingy = 100;
float paddingxCopy = paddingx;
<<<<<<< Updated upstream

ArrayList<Card> cardlist = new ArrayList<Card>();
float desiredprob = 0.7;
=======
int cardButton;
int halfWidth;
int x, y;
>>>>>>> Stashed changes

void setup()
{
    size(600, 600);
    halfWidth = 300;
    x = halfWidth;
    y= 150;
    frameRate(60);
    rectMode(CENTER);
    animationSpeed = (width-paddingx)/animationTime;    //Calculated Speed to be used in animation
}

void draw()
{
    println(halfWidth);
    //Initialize variables
    if (currentCard == 0)
    {
        print("halfWidth is now", halfWidth);
        startScreen();
    }
    if (cardButton != currentCard)
    {
        //currentCard = nextCard;
    }
    if (drawCard == true)
    {
        //draw Current Card
        displayCard(AL_Card.get(currentCard).question);    //display question
    }
    //if (/*question answered*/)
    //{
    //    //feedback
    //    displayAnswer();
    //}
    if (currentCard == cardNumber)
    {
        //show ratings
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
