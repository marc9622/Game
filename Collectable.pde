class Collectable {
  
  //Her bliver brugt variabler
  float x, y;
  float size = 10;
  float tempSize;
  
  color col = color(255);
  
  //Dette er en konstruktør
  Collectable(PVector pos_) {
    
    x = pos_.x;
    y = pos_.y;
    
  }
  
  //Dette er en metode i klassen Collectable
  void display() {
    
    tempSize = size * (width + height) / 2 / 500;
    
    fill(col);
    square(x, y, tempSize);
  }
  
  boolean isCollectable() {
    
    float xDiff = abs(player.x - x);
    float yDiff = abs(player.y - y);
    
    float range = (player.offset + tempSize) / 2;
    
    if(xDiff < range && yDiff < range) {
      
      collect();
      return true;
    }
    
    return false;
  }
  
  void collect() {}
}
