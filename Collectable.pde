class Collectable {
  
  //Her bliver brugt variabler
  float x, y;
  
  //Dette er en konstruktør
  Collectable(PVector position) {
    
    x = position.x;
    y = position.y;
    
  }
  
  //Dette er en metode i klassen Collectable
  void display() {
    
    circle(x, y, 10);
    
  }
  
}
