// I wanna make hyperspace really f##cking cool
Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
int[] keysPressed = new int[4]; // 0 is up, 1 is left, 2 is right and 4 is hyperspace
public void setup(){
  size(400,400);
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
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
  moveShip();
  
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
  
  if (key == 'h'){
    keysPressed[3] = 1;
  }
}

public void keyReleased(){
  if (key == 'h'){
    bob.hyperspace();
    remap();
    keysPressed[3] = 0;
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
    bob.accelerate(0.1);
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





