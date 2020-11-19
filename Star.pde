class Star //note that this class does NOT extend Floater
{
   //your code here
  private int myX, myY, myColor, mySize;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256)+20, (int)(Math.random()*256)+20, (int)(Math.random()*256)+20, (int)(Math.random()*256));
    mySize = (int)(Math.random()*10);
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
