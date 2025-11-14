class Spaceship extends Floater{
  
  public Spaceship(){
    myCenterX = 200;
    myCenterY = 200;
    myPointDirection = 0;
    myColor = 255;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
  }
  
  //public void turn(float dir){
  //  myPointDirection += dir;
  //  for (int i = 0; i < corners; i++){
  //    xCorners[i] += Math.cos(myPointDirection);
  //    yCorners[i] += Math.sin(myPointDirection);
  //    System.out.println(Math.cos(myPointDirection));
  //  }
  //}
  
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myPointDirection = (int)(Math.random()*360);
  }
  
}






