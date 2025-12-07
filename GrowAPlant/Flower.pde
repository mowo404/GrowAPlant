class Flower {
  float x,y;
  float growth = 0;
  float maxGrowth;
  
  Flower(float x_, float y_) {
    x = x_;
    y = y_;
    
    maxGrowth = (y - height * 0.25) - 25;
  }
  void display() {
    fill(255, 46, 123);
    noStroke();
    image(flowa, x - 33, y + (25 - growth), 70, 70);
  }
  
  void grow() {
    if (growth < maxGrowth) {
      growth += 1;
    }
  }  
}
    
