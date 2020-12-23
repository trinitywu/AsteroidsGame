class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(2.5);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
   public double getX(){
    return myCenterX;
  }
   public double getY(){
    return myCenterY;
  }
}
