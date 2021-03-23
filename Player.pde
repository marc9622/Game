class Player {
  
  //Her bliver brugt variabler
  float x = width / 2, y = height / 2;
  float speed = 1;
  
  boolean isUp, isDown, isLeft, isRight;
  
  int point = 0;
  
  float offset;
  
  //Dette er en metode i klassen Player
  void display() {
    
    offset = point + 10;
    
    fill(color(255, 0, 0));
    circle(x, y, offset);
    text(point, x, y - offset / 2 - 1);
    
  }
  
  void move() {
    
    if(isUp    && y - offset / 2 > 0)      y -= speed;
    if(isDown  && y + offset / 2 < height) y += speed;
    if(isLeft  && x - offset / 2 > 0)      x -= speed;
    if(isRight && x + offset / 2 < width)  x += speed;
  }
  
}
