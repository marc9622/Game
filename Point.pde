//Her bruges der nedarvning.
class Point extends Collectable {
  
  float value;
  
  //Dette er overload, da der er flere konstruktører med forskellige input-muligheder.
  Point(PVector pos_, float value_) {
    
    this(pos_);
    
    value = value_;
    size = value * 10;
  }
  
  //Dette er overload, da der er flere konstruktører med forskellige input-muligheder.
  Point(PVector pos_) {
   
    super(pos_);
    
    value = 1;
    col = color(255, 255, 0);
  }
  
  //Her bliver der overridet metoden collect fra Collectable-klassen.
  void collect() {
    
    player.point += value;
  }
}
