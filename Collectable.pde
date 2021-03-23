class Collectable {
  
  //Her bliver brugt variabler
  float x, y;
  
  color col = color(255);
  
  //Dette er en konstruktør
  Collectable(PVector pos_) {
    
    x = pos_.x;
    y = pos_.y;
    
  }
  
  //Dette er en metode i klassen Collectable
  void display() {
    
    fill(col);
    circle(x, y, 10);
    
  }
  
  boolean isCollectable() {
    
    float xDiff = abs(player.x - x);
    float yDiff = abs(player.y - y);
    
    float range = player.offset / 2;
    
    if(xDiff < range && yDiff < range) {
      
      collect();
      return true;
      
    }
    
    return false;
  }
  
  void collect() {}

}
