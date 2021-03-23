class Player {
  
  //Her bliver brugt variabler
  float x = width / 2, y = height / 2;
  float speed = 1;
  
  boolean isUp, isDown, isLeft, isRight;
  
  int point = 0;
  
  float offset;
  
  //Dette er en metode i klassen Player
  void display() {
    
    offset = (point + 10) * (width + height) / 2 / 500;
    
    fill(color(255, 0, 0));
    square(x, y, offset);
  }
  
  void move() {
    
    float tempSpeed = speed * (width + height) / 2 / 500;
    
    if(isUp    && y - offset / 2 > 0)      y -= tempSpeed;
    if(isDown  && y + offset / 2 < height) y += tempSpeed;
    if(isLeft  && x - offset / 2 > 0)      x -= tempSpeed;
    if(isRight && x + offset / 2 < width)  x += tempSpeed;
  }
}
