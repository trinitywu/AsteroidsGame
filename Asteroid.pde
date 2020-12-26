class Asteroid extends Floater{
  double rotSpeed;
  int n;
  public Asteroid() {
    rotSpeed = Math.random()*2-1;
    n = (int)(Math.random()*6+2);
    corners = 11;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 0;
    yCorners[0] = -8*n;
    xCorners[1] = 5*n;
    yCorners[1] = -3*n;
    xCorners[2] = 3*n;
    yCorners[2] = -3*n;
    xCorners[3] = 6*n;
    yCorners[3] = 3*n;
    xCorners[4] = 1*n;
    yCorners[4] = 3*n;
    xCorners[5] = 1*n;
    yCorners[5] = 5*n;
    xCorners[6] = -1*n;
    yCorners[6] = 5*n;
    xCorners[7] = -1*n;
    yCorners[7] = 3*n;
    xCorners[8] = -6*n;
    yCorners[8] = 3*n;
    xCorners[9] = -3*n;
    yCorners[9] = -3*n;
    xCorners[10] = -5*n;
    yCorners[10] = -3*n;
    myColor = color(38, 131, 90);
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
