class Card
{
    //feild
    String question;
    String answer;
    //constructor
    Card (String q, String a)
    {
        this.question = q;
        this.question = a;
    }
    //method
    void switchingAnimation(float speed, float paddingx, float paddingy)    //Animation of flipping the flashcard
    {
        //for (int i = 0; i < width; i++)
        //{
        //    fill(0);
        //    square(i, 0, width-i);
        //}
        paddingx+=speed;
        if (paddingx <= width-paddingx)
        {
            background(255, 255, 255);
            rect(paddingx, 50, round(width-2*paddingx), round(height - paddingy));
        }
    }
    void displayQuestion(String question, float switchSpeed, float paddingx, float paddingy)
    {
        switchingAnimation(((width-paddingx)/(frameRate*switchSpeed)), paddingx, paddingy);
        text(question, float(width/4), paddingy, float(width/2), height-paddingy);
    }
    void displayAnwser()
    {}
}
