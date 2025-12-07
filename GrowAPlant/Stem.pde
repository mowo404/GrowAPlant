class Stem {
  float x, y;
  float growth = 0;
  float maxGrowth;

  Stem(float x_, float y_) {
    x = x_;
    y = y_;

   
    maxGrowth = (y - height * 0.40) - 50;
  }

  void display() {
    fill(116, 216, 59);
    stroke(94, 180, 46);
    strokeWeight(4);
    line(x, y, x, y - (50 + growth));
  }

  void grow() {
    if (growth < maxGrowth) {
      growth += 1;
    }
  }
  

}
