//Her bruges der nedarvning.
class Point extends Collectable {
  
  Point(PVector pos_) {
   
    super(pos_);
    
    col = color(255, 255, 0);
  }
  
  //Her bliver der overridet metoden collect fra Collectable-klassen.
  void collect() {
    
    player.point += 1;
    
  }

}
