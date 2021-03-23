//Her bruges der nedarvning.
class PowerUp extends Collectable {
  
  PowerUp(PVector pos_) {
   
    super(pos_);
    
    col = color(0, 0, 255);
    
    size = 30;
  }
  
  //Her bliver der overridet metoden collect fra Collectable-klassen.
  void collect() {
    
    player.speed += 0.2;
  }
  
}
