// I wanna make hyperspace really f##cking cool
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
int[] keysPressed = new int[4]; // 0 is up, 1 is left, 2 is right and 3 is hyperspace
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
public void setup(){
  size(400,400);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for (int i = 0; i < 10; i++){
    asteroids.add(new Asteroid());
  }
  
  keysPressed[3] = 0;
}

public void draw(){
  //background(0, 255- 150*keysPressed[3]);
  fill(0, 255- 225*keysPressed[3]);
  rect(-10,0,410,400);
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
  moveShip();
  collide();
  
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
    if (keysPressed[3] == 0 && (Math.abs(bob.getXspeed())> 30 ||Math.abs(bob.getYspeed()) > 30)){
      keysPressed[3] = 1;
      for (int i = 0; i < stars.length; i++){
        stars[i].tempDir();
      }
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
    if (asteroids.get(i).getX()-10<= bob.getX() && asteroids.get(i).getX()+15>= bob.getX()){ //if any car comes in range
      if (asteroids.get(i).getY()-10<= bob.getY() && asteroids.get(i).getY()+10>= bob.getY()){
            System.out.println("boom");
            bob.bump();
        asteroids.remove(i); //smoke 'em
      //points ++;
    }} }
  }








