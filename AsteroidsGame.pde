ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int i = 0; i < 25; i++)
  {
    asteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
   for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    for(int j = 0; j < bullets.size(); j++)
    {
      if(dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) < 20){
        asteroids.remove(i);
        bullets.remove(j);
        break;
      }
      if(bullets.get(j).getX() == 500 || bullets.get(j).getX() == 0 || bullets.get(j).getY() == 500 || bullets.get(j).getY() == 0){
        bullets.remove(j);
      }
    }
  }
  for(int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).move();
    bullets.get(i).show();
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
  }else if(key == 'r' && asteroids.size() == 0){
    bob.restart();
    for(int i = 0; i < 15; i++)
    {
    asteroids.add(new Asteroid());
    }
  }else if(key == ' '){
    bullets.add(new Bullet(bob));
  }
}
