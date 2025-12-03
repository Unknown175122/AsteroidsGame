// I wanna make hyperspace really f##cking cool
//holy cow its rly fckin cool
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
int[] keysPressed = new int[4]; // 0 is up, 1 is left, 2 is right and 3 is hyperspace
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>(); //SHOTS SHOTS
int health, ammo;
public void setup(){
  size(400,400);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for (int i = 0; i < 15; i++){
    asteroids.add(new Asteroid());
  }
  
  keysPressed[3] = 0;
  health = 3;
  ammo = 3;
}

public void draw(){
  //background(0, 255- 150*keysPressed[3]);
  fill(0, 255- 225*keysPressed[3]);
  rect(-10,0,410,400);
  if (health == 0){
    redraw();
  }
  ammo = 3-shots.size();
  //bob.update();
  bob.move();
  bob.show();
  for (int i = 0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
  for (int i = 0; i < asteroids.size(); i++){
    asteroids.get(i).move();
    asteroids.get(i).show();
  }
  for (int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show(i); //give it its index so it can off itself
  }
  moveShip();
  collide();
  drawUI();
}

public void keyPressed(){
  if (key == CODED){
  if (keyCode == UP){
    keysPressed[0] = 1;
  } 
  if (keyCode == LEFT){
    keysPressed[1] = 1;
  }
  
  if (keyCode == RIGHT){
    keysPressed[2] = 1;
  }}
  
  if (key == 'h'){ //have to build up speed before launching
    if (keysPressed[3] == 0 && (bob.getXspeed()> 30 ||bob.getYspeed() > 30 || bob.getXspeed()< -30 ||bob.getYspeed() < -30)){
      keysPressed[3] = 1;
      for (int i = 0; i < stars.length; i++){
        stars[i].tempDir();
      }
    }
  }
  if (key == 'z'){
    if (ammo != 0){
    shots.add(new Bullet(bob));
    }
  }
}

public void keyReleased(){
  if (key == 'h'){
    if (keysPressed[3] == 1){
      bob.hyperspace();
      keysPressed[3] = 0;
      remap();
    }
  }
  if (key == CODED){
  if (keyCode == UP){
    keysPressed[0] = 0;
  } 
  if (keyCode == LEFT){
    keysPressed[1] = 0;
  }
  
  if (keyCode == RIGHT){
    keysPressed[2] = 0;
  }
  }
}

public void moveShip(){
  //move according to keysPressed
  if (keysPressed[3] == 1){
    for (int i = 0; i < stars.length; i++){
    stars[i].hyperMove();
    stars[i].show();
  }
  }
  if (keysPressed[0] == 1){
    bob.accelerate(0.03);
  }
  if (keysPressed[1] == 1){
    bob.turn(-5);
  }
  
  if (keysPressed[2] == 1){
    bob.turn(5);
  }
  
}

public void remap(){ //remaps stars for hyperspace or when going offscreen
  for (int i = 0; i < stars.length;i++){
      stars[i].setRandom();
    }
}



public void collide(){
   for (int i = asteroids.size()-1; i>=0; i--){
     if (ship2As(i)){continue;}; //if hit asteroid wship no need to check same as
     bull2As(i);
   }
}
  
public boolean ship2As(int i){
  if (asteroids.get(i).getX()-14<= bob.getX() && asteroids.get(i).getX()+29>= bob.getX()){ //if any car comes in range
      if (asteroids.get(i).getY()-14<= bob.getY() && asteroids.get(i).getY()+14>= bob.getY()){
            //System.out.println("boom");
            bob.bump();
        asteroids.remove(i); //smoke 'em
        health--;
        return true;
      //points ++;
    }}
    return false;
}

public void bull2As(int i){
  for (int j = shots.size()-1; j>=0;j--){
    if (asteroids.get(i).getX()-10<= shots.get(j).getX() && asteroids.get(i).getX()+10>= shots.get(j).getX()){ //if any car comes in range
        if (asteroids.get(i).getY()-10<= shots.get(j).getY() && asteroids.get(i).getY()+10>= shots.get(j).getY()){
            //System.out.println("boom");
          asteroids.remove(i); //smoke 'em
          shots.remove(j);
          break;
      //points ++;
    }}}
}

public void drawUI(){
  for (int i = 0; i < health; i ++){
    drawHeart(i*25+5, 7);
  }
  for (int i = 0; i < ammo; i ++){
    drawAmmo(380-(i*20+5), 7);
  }
  fill(0,255,255);
  noStroke();
  arc(375,375,25,25,0,PI * ((float)Math.abs(bob.getXspeed())+(float)Math.abs(bob.getYspeed()))/30);
}

public void drawHeart(int x, int y){
  fill(255,130,130);
  stroke(255,100,100);
  beginShape();
curveVertex(x+12,y+20);
curveVertex(x+12,y+20);
curveVertex(x+22,y+8);
curveVertex(x+18,y+0);
curveVertex(x+12,y+3);
curveVertex(x+6,y+0);
curveVertex(x+2,y+8);
curveVertex(x+12,y+20);
curveVertex(x+12,y+20);
endShape();
}

public void drawAmmo(int x, int y){
  fill(0,230,0);
  stroke(0);
beginShape();
curveVertex(x,y+25);
curveVertex(x,y+25);
curveVertex(x+1,y+10);
curveVertex(x+5,y);
curveVertex(x+12,y);
curveVertex(x+16,y+10);
curveVertex(x+17,y+25);
curveVertex(x+17,y+25);
curveVertex(x+17,y+25);
curveVertex(x,y+25);
curveVertex(x,y+25);
endShape();
}
