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
    corners = 6;//(int)(Math.random()*4)+6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*5) -3;
    yCorners[0] = (int)(Math.random()*5) -7;
    xCorners[1] = (int)(Math.random()*5) +3;
    yCorners[1] = (int)(Math.random()*5) -7;
    xCorners[2] = (int)(Math.random()*5) +7;
    yCorners[2] = (int)(Math.random()*5);
    xCorners[3] = (int)(Math.random()*5) +3;
    yCorners[3] = (int)(Math.random()*5) +7;
    xCorners[4] = (int)(Math.random()*5) -3;
    yCorners[4] = (int)(Math.random()*5) +7;
    xCorners[5] = (int)(Math.random()*5) -7;
    yCorners[5] = (int)(Math.random()*5);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }

  
}


