class Rain {
//declare vairables... p = position, v = velocity, a = acceleration
  PVector p, v, a;
  
  
   Rain() {
//initialize each vector
   p = new PVector(0, 0);
   v = new PVector(0, 4);     
   a = new PVector(0, 0.2);   
  }
  
//function to display rain with image
  void display() {
    stroke(0, 100, 255);
    image(rainf, p.x, p.y, 10, 20);
  }

  //function to move raindrops to create rainfall
   void update() {
    //add velocity and acceleration vector, add position and velocity vector
    v.add(a);   
    p.add(v);   
  }
  
}
