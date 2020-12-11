ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int i = 0; i < 15; i++)
  {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    if(dist((float)bob.getX(), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) < 30){
      asteroids.remove(i);
    }
  }
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
}
public void keyPressed()
{
  if(key == 'a'){
    bob.turn(-5);
  }else if(key == 'd'){
    bob.turn(5);
  }else if(key == 'w'){
    bob.accelerate(0.3);
  }else if(key == 'h'){
    bob.hyperspace();
  }
}
