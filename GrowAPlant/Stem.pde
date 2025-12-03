class Stem {
  float x, y;
  
  Stem(float x_, float y_) {
  x = x_;
  y = y_;
  }
    
  
  void display() {
    fill(116, 216, 59);
    stroke(94, 180, 46);
    strokeWeight(4);
    line(x, y, x, y - 50);
  }
}
