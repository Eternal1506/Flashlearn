int cardNumber;
int currentCard = 0;
int currentQuestion;
boolean drawCard = false;
ArrayList<Card> AL_Card = new ArrayList<Card>();
float animationTime = 5;
float animationSpeed;    //time (in seconds) the animation takes
float paddingx =50;
float paddingy = 100;
float paddingxCopy = paddingx;

void setup()
{
    size(600, 600);
    frameRate(60);
    rectMode(CENTER);
    animationSpeed = (width-paddingx)/animationTime;    //Calculated Speed to be used in animation
}

void draw()
{
    //Initialize variables
    if (currentCard == 0)
    {
        //Starting page
    }
    if (drawCard == true)
    {
        //draw Current Card
        displayQuestion();
    }
    //if (/*question answered*/)
    //{
    //    //feedback
    //    displayAnswer();
    //}
    if (currentCard == cardNumber)
    {
        //show results
    }
}


void displayQuestion()
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
        text(AL_Card.get(currentCard).question, width/2, height/2, 3*width/4, height-2*paddingy);    //display the question
    }
}

void displayAnswer()
{
    paddingxCopy+=animationSpeed;
    if (paddingxCopy <= width-paddingx)
    {
        background(255, 255, 255);
        rect(width/2, height/2, round(width-2*paddingxCopy), round(height - paddingy));
    }
    else
    {
        fill(0);
        text(AL_Card.get(currentCard).answer, width/2, height/2, 3*width/4, height-2*paddingy);
    }
}
