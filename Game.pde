//Her laves der et objekt af klassen Player. Objektet er af typen Player.
Player player = new Player();

ArrayList<Collectable> collectables = new ArrayList();

void setup(){
  
  size(500, 500);
  
  for(int i = 0; i < 10; i++)
    collectables.add(new Point(getRandomPosition()));
  
  for(int i = 0; i < 3; i++)
    collectables.add(new PowerUp(getRandomPosition()));
  
}

//Denne funktion retunere en PVector
PVector getRandomPosition() {
  
  return new PVector(random(width), random(height));
  
}

void draw() {
  
  player.display();
  for (Collectable c : collectables) {
    
    c.display();
    
  }
  
}
