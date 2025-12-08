class Stem {
  //decalre vairables
  float x, y;
  float growth = 0;
  float maxGrowth;

//constructur with correspodning values
  Stem(float x_, float y_) {
    x = x_;
    y = y_;

    //initialize maxGrowth variable, once growth reaches this point it will stop growing
    maxGrowth = (y - height * 0.40) - 50;
  }
//function to display stem with image
  void display() {
    fill(116, 216, 59);
    stroke(94, 180, 46);
    strokeWeight(4);
    //y changes with growth variable
    line(x, y, x, y - (50 + growth));
  }
//function to grow stem with rain
  void grow() {
    //if the growth length is below max growth then keep growing
    if (growth < maxGrowth) {
      growth += 1;
    }
  }
  

}
