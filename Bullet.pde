class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = 8;
    xCorners[1] = 2;
    yCorners[1] = 8;
    xCorners[2] = 4;
    yCorners[2] = 12;
    xCorners[3] = 6;
    yCorners[3] = 8;
    xCorners[4] = 8;
    yCorners[4] = 8;
    xCorners[5] = 6;
    yCorners[5] = 6;
    xCorners[6] = 8;
    yCorners[6] = 2;
    xCorners[7] = 4;
    yCorners[7] = 4;
    xCorners[8] = 0;
    yCorners[8] = 2;
    xCorners[9] = 2;
    yCorners[9] = 6;
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(2.5);
    myColor = color(232, 208, 70);
  }
  
   public double getX(){
    return myCenterX;
  }
   public double getY(){
    return myCenterY;
  }
}
