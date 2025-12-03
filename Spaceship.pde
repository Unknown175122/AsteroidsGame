class Spaceship extends Floater{
  
  public Spaceship(){
    myCenterX = 200;
    myCenterY = 200;
    myPointDirection = 0;
    myColor = 255;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -7;
    yCorners[0] = -7;
    xCorners[1] = 15;
    yCorners[1] = 0;
    xCorners[2] = -7;
    yCorners[2] = 7;
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
  
  public void move(){
    super.move();
    if (wrapped){
      remap();
    }
  }
  
  public void reset(){
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void bump(){ //when hit asteroid
    myXspeed -= myXspeed/2;//(myXspeed / Math.abs(myXspeed)) *(Math.abs(myXspeed)-(Math.abs(myXspeed)/4));
    myYspeed -= myYspeed/2;//(myYspeed / Math.abs(myYspeed)) *(Math.abs(myYspeed)-(Math.abs(myYspeed)/4));
    
  }
  
}



