class Star{
  private double myX, myY, s, dir, tempX, tempY;
  private double thingaling, tempdir;
  public Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    tempX = 0;
    tempY = 0;
    s = (int)(Math.random()*3)+1;
    dir = (Math.random()*(2*Math.PI));
    
    thingaling = 0;
    tempdir = 0;
    //setDir();
    //if (myY > 200 || (myY == 200 && Math.random() <= 0.5)){
    //  tempdir -= (tempdir*-1.0/22)*5.5;
    //} else {  //11 is up
    //  tempdir += (tempdir*-1.0/22)*5.5;
    //}

  }
  
  public void move(){ //move 0.01 in direction
    myX += Math.cos(dir)*0.01;
    myY += Math.sin(dir)*0.01;

  }
  
  public void hyperMove(){ //move 0.01 in direction
    tempX += Math.cos(0)*thingaling;
    tempY += Math.sin(0)*thingaling;
    thingaling -= thingaling/30;

  }
  
  public void show(){
    //fill(255-60+20*(float)thingaling, 255-30+10*(float)thingaling, 255);
    //stroke(255-60+20*(float)thingaling, 255-30+10*(float)thingaling, 255);
    fill(255);
    stroke(255);
    translate((float)myX, (float)myY);
    rotate((float)tempdir);
    ellipse((float)tempX, (float)tempY, (float)s, (float)s);
    rotate(-1*(float)tempdir);
    translate(-1*(float)myX, -1*(float)myY);
  }
  
  public void setRandom(){
    if (keysPressed[3] == 0){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    s = (int)(Math.random()*3)+1;
    dir = (Math.random()*(2*Math.PI));
    tempX = 0;
    tempY = 0;
    tempdir = 0;
    thingaling = 3;
    } else{
      thingaling += thingaling/4;
    }
    //if (myX > 200){
    //  tempdir = 0;
    //} else if (myX < 200){  //11 is up
    //  tempdir = 22;hhhhhhhhh
    //}
    //setDir();
  }
  
  public void tempDir(){
    //thingaling = 3;
    if (myX > 200){
    tempdir = Math.atan((myY-200)/( myX-200));
    } else{
      tempdir = 22+Math.atan((myY-200)/( myX-200));
    }
  }
  
}





