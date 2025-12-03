class Bullet extends Floater{
  public Bullet(Spaceship theship){
    myCenterX = theship.getX();
    myCenterY = theship.getY();
    myXspeed = theship.getXspeed();
    myYspeed = theship.getYspeed();
    myPointDirection = theship.getptdir();
    accelerate(6.0);
rect(0,0,400,400);
  }
  public void show(int index){
    if (wrapped){
      shots.remove(index); //put in here because last command of the loop
    } else{
      fill(0,255,0);
      noStroke();
      //ellipse((float)myCenterX,(float)myCenterY,10,10);
      ellipse((float)myCenterX,(float)myCenterY,5,5);
    }
  }
  
}



