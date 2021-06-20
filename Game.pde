//Her laves der et objekt af klassen Player. Objektet er af typen Player.
Player player;
int level = 0;

ArrayList<Collectable> collectables = new ArrayList();

//Inde i denne setup-funktion har vi et scope med alt det, som den indeholder.
void setup(){
  
  size(500, 500);
  surface.setResizable(true);
  noStroke();
  rectMode(CENTER);
  
  player = new Player();
  
  collectables.add(new Point(getRandomPosition()));
}

void spawnCollectables() {
  level++;
  
  //Her bliver der brugt Point-objekter i en ArrayList lavet til Collectable-objekter. Dette er polymorfi.
  for(int i = 0; i < level;) {
    int points = round(random(1,3));
    collectables.add(new Point(getRandomPosition(), points));
    i += points;
  }
  
  //Her bliver der brugt PowerUp-objekter i en ArrayList lavet til Collectable-objekter. Dette er polymorfi.
  for(int i = 0; i < random(3); i++)
    collectables.add(new PowerUp(getRandomPosition()));
}

//Denne funktion retunere en PVector
PVector getRandomPosition() {
  
  return new PVector(random(width), random(height));
}

void draw() {
  
  if(player.point >= max(width, height)) {
    fill(255);
    text("You Won", width / 2, height / 2);
    return;
  }
  
  background(200);
  
  if(collectables.size() == 0)
    spawnCollectables();
  
  for (Collectable c : collectables)
    c.display();
  
  for (Collectable c : collectables)
    if(c.isCollectable()) {
      collectables.remove(c);
      break;
    }
    
  //Dette er vel en reference til player objektet
  player.display();
  player.move();
}

void keyPressed() {
  
  if(keyCode == UP || key == 'w')
    player.isUp = true;
  if(keyCode == DOWN || key == 's')
    player.isDown = true;
  if(keyCode == LEFT || key == 'a')
    player.isLeft = true;
  if(keyCode == RIGHT || key == 'd')
    player.isRight = true;
}

void keyReleased() {
  
  if(keyCode == UP || key == 'w')
    player.isUp = false;
  if(keyCode == DOWN || key == 's')
    player.isDown = false;
  if(keyCode == LEFT || key == 'a')
    player.isLeft = false;
  if(keyCode == RIGHT || key == 'd')
    player.isRight = false;
}
