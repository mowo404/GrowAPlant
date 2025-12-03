class Rain {
  //Decalre variable for position velocity and accelaration
  PVector p, v, a;
  
  
   Rain() {
   p = new PVector(0, 0);     // position = rainfall position
   v = new PVector(0, 4);     // velocity = speed of rain fall
   a = new PVector(0, 0.2);   // acceleration = slight increase in rainfall
  }
  
  //function to draw rainfall
  void display() {
    stroke(0, 100, 255);
    image(rainf, p.x, p.y, 10, 20);
  }

  //function for rainfall movement using acceleration and velocity vectors.
   void update() {
    v.add(a);   
    p.add(v);   
  }
  
}
