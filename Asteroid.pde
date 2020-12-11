class Asteroid extends Floater{
  double rotSpeed;
  public Asteroid() {
    rotSpeed = Math.random()*2-1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -(int)(Math.random()*10+10);
    yCorners[0] = -(int)(Math.random()*10+10);
    xCorners[1] = -(int)(Math.random()*10+10);
    yCorners[1] = 0;
    xCorners[2] = -(int)(Math.random()*10+10);
    yCorners[2] = (int)(Math.random()*10+10);
    xCorners[3] = (int)(Math.random()*10+10);
    yCorners[3] = (int)(Math.random()*10+10);
    xCorners[4] = (int)(Math.random()*10+10);
    yCorners[4] = 0;
    xCorners[5] = (int)(Math.random()*10+10);
    yCorners[5] = -(int)(Math.random()*10+10);
    myColor = color(111, 111, 111);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = 0;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
