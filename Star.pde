class Star{
  private double myX, myY, s, dir;
  private double thingaling, tempdir;
  public Star(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    s = (int)(Math.random()*3)+1;
    dir = (Math.random()*(2*Math.PI));
    
    thingaling = 3;
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
    myX += Math.cos(tempdir)*thingaling;
    myY += Math.sin(tempdir)*thingaling;
    thingaling -= thingaling/30;

  }
  
  public void show(){
    ellipse((float)myX, (float)myY, (float)s, (float)s);
  }
  
  public void setRandom(){
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    s = (int)(Math.random()*3)+1;
    dir = (Math.random()*(2*Math.PI));
    
    thingaling = 7;
    
    //if (myX > 200){
    //  tempdir = 0;
    //} else if (myX < 200){  //11 is up
    //  tempdir = 22;
    //}
    //setDir();
  }
  
  //public void setDir(){
  //  double ran = Math.random();
  //  boolean greaterX = myX > 250 || (myX <= 250 && myX >= 150 && ran <= 0.5);
  //  boolean middleY = myY <= 250 && myY >= 150;
  //  boolean greaterY = myY > 250 || (myY <= 250 && myY >= 150 && ran <= 0.5);
  //  boolean middleX = myX <= 250 && myX >= 150;
  //  boolean lesserX = myX < 250 || (myX <= 250 && myX >= 150 && ran >= 0.5);
  //  boolean lesserY = myY < 250 || (myY <= 250 && myY >= 150 && ran >= 0.5);
  //  if ( greaterX && middleY){
  //    tempdir = 0;
  //  } else if (greaterX && lesserY){
  //    tempdir = 5.5;
  //  } else if (middleX && lesserY){
  //    tempdir = 11;
  //  } else if(lesserX && lesserY){
  //    tempdir = 16.5;
  //  } else if (lesserX && middleY){  //11 is up
  //    tempdir = 22;
  //  } else if (lesserX && greaterY){
  //    tempdir = 27.5;
  //  } else if (middleX && greaterY){
  //    tempdir = 33;
  //  } else{
  //    tempdir = 38.5;
  //  }
  //  //if (myY > 250 || (myY <= 250 && myY >= 150 && ran <= 0.5)){
  //  //  tempdir += 39;
  //  //} else if (myY < 150){  //11 is up
  //  //  tempdir += 17;
  //  //}
  //}
  
}


