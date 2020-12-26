class Spaceship extends Floater  
{   
    public Spaceship() //constructor
    {
      corners = 22; 
      xCorners = new int[corners]; 
      yCorners = new int[corners]; 
      xCorners[0] = -6;
      yCorners[0] = 0;
      xCorners[1] = -8;
      yCorners[1] = -2;
      xCorners[2] = -10;
      yCorners[2] = -6;
      xCorners[3] = -10;
      yCorners[3] = -10;
      xCorners[4] = -8;
      yCorners[4] = -14;
      xCorners[5] = -6;
      yCorners[5] = -16;
      xCorners[6] = 0;
      yCorners[6] = -18;
      xCorners[7] = 4;
      yCorners[7] = -16;
      xCorners[8] = 6;
      yCorners[8] = -14;
      xCorners[9] = 8;
      yCorners[9] = -10;
      xCorners[10] = 8;
      yCorners[10] = -6;
      xCorners[11] = 6;
      yCorners[11] = -2;
      xCorners[12] = 4;
      yCorners[12] = 0;
      xCorners[13] = 8;
      yCorners[13] = 4;
      xCorners[14] = 10;
      yCorners[14] = 10;
      xCorners[15] = 10;
      yCorners[15] = 16;
      xCorners[16] = 6;
      yCorners[16] = 20;
      xCorners[17] = 0;
      yCorners[17] = 22;
      xCorners[18] = -8;
      yCorners[18] = 20;
      xCorners[19] = -12;
      yCorners[19] = 16;
      xCorners[20] = -12;
      yCorners[20] = 10;
      xCorners[21] = -10;
      yCorners[21] = 4;
      myColor = color(255, 255, 255);   
      myCenterX = myCenterY = 250;   
      myXspeed = myYspeed = 0;  
      myPointDirection = (int)(Math.random()*360); 
    }
    
    public void hyperspace()
    {
      myXspeed = myYspeed = 0;
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (int)(Math.random()*360); 
    } 
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
    public double getMyXspeed(){
      return myXspeed;
    }
    public double getMyYspeed(){
      return myYspeed;
    }
    public void restart(){
      myXspeed = myYspeed = 0;
      myCenterX = myCenterY = 250;
      myPointDirection = (int)(Math.random()*360); 
    }
}
