class Stem {
  float x, y;
  
  Stem(float x_, float y_) {
  x = x_;
  y = y_;
  }
    
  
  void display() {
    fill(255, 0, 150);
    stroke(0, 150, 0);
    strokeWeight(6);
    line(x, y, x, y - 50);
  }
}
