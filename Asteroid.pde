class Asteroid extends Floater{
  double rotSpeed; //randomly + or -
  public Asteroid(){
    myCenterX = (Math.random()*400);
    myCenterY = (Math.random()*400);
    myPointDirection = (Math.random()*360);
    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
    rotSpeed = (Math.random()*4) -2;
    myColor = 200;
    corners = 60;//(int)(Math.random()*4)+6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i = 0; i < corners; i++){
      xCorners[i] = (int)(Math.random()*10)-(int)(Math.random()*20);
      yCorners[i] = (int)(Math.random()*10)-(int)(Math.random()*20);
    }
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }

  
}
