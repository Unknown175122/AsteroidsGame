class Bullet extends Floater{
  public Bullet(Spaceship theship){
    myCenterX = theship.getX();
    myCenterY = theship.getY();
    myXspeed = theship.getXspeed();
    myYspeed = theship.getYspeed();
    myPointDirection = theship.getptdir();
    accelerate(0.6);
  }
  public void show(int index){
    if (wrapped){
      shots.remove(index); //put in here because last command of the loop
    } else{
      fill(255);
      ellipse((float)myCenterX,(float)myCenterY,10,10);
    }
  }
  
}
