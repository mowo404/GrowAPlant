class Flower {
  float x,y;
  
  Flower(float x_, float y_) {
    x = x_;
    y = y_;
  }
  void display() {
    fill(255, 46, 123);
    noStroke();
    image(flowa, x - 25, y + 25, 70, 70);
  }
}
    
