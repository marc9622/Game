//Her laves der et objekt af klassen Player. Objektet er af typen Player.
static Player player;

ArrayList<Collectable> collectables = new ArrayList();

//Inde i denne setup-funktion har vi et scope med alt det, som den indeholder.
void setup(){
  
  size(500, 500);
  noStroke();
  
  player = new Player();

}

void spawnCollectables() {
  
  //Her bliver der brugt Point-objekter i en ArrayList lavet til Collectable-objekter. Dette er polymorfi.
  for(int i = 0; i < 10; i++)
    collectables.add(new Point(getRandomPosition()));
  
  //Her bliver der brugt PowerUp-objekter i en ArrayList lavet til Collectable-objekter. Dette er polymorfi.
  for(int i = 0; i < 3; i++)
    collectables.add(new PowerUp(getRandomPosition()));
  
}

//Denne funktion retunere en PVector
PVector getRandomPosition() {
  
  return new PVector(random(width), random(height));
  
}

void draw() {
  
  if(player.point >= 1000) {
    fill(255);
    text("You Won", width / 2, height / 2);
    return;
  }
  
  background(0);
  
  if(collectables.size() == 0)
    spawnCollectables();
  
  for (Collectable c : collectables)
    c.display();
  
  for (Collectable c : collectables)
    if(c.isCollectable()) {
      collectables.remove(c);
      break;
    }
    
  player.display();
  player.move();
}

void keyPressed() {
  
  if(keyCode == UP)
    player.isUp = true;
  if(keyCode == DOWN)
    player.isDown = true;
  if(keyCode == LEFT)
    player.isLeft = true;
  if(keyCode == RIGHT)
    player.isRight = true;
  
}

void keyReleased() {
  
  if(keyCode == UP)
    player.isUp = false;
  if(keyCode == DOWN)
    player.isDown = false;
  if(keyCode == LEFT)
    player.isLeft = false;
  if(keyCode == RIGHT)
    player.isRight = false;
  
}
