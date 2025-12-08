class Flower {
  //decalre vairables
  float x,y;
  float growth = 0;
  float maxGrowth;
  
//constructur with correspodning values
  Flower(float x_, float y_) {
    x = x_;
    y = y_;
    
   //initialize maxGrowth variable, once growth reaches this point it will stop growing
    maxGrowth = (y - height * 0.25) - 25;
  }
  //function to display flower with image
  void display() {
    fill(255, 46, 123);
    noStroke();
    //y changes with growth variable
    image(flowa, x - 33, y + (25 - growth), 70, 70);
  }
  //function to grow flower with rain
  void grow() {
    //if the growth length is below max growth then keep growing
    if (growth < maxGrowth) {
      growth += 1;
    }
  }  
}
    
