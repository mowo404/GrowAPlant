class Rain {

  PVector p, v, a;
  
  
   Rain() {
   p = new PVector(0, 0);
   v = new PVector(0, 4);     
   a = new PVector(0, 0.2);   
  }
  

  void display() {
    stroke(0, 100, 255);
    image(rainf, p.x, p.y, 10, 20);
  }


   void update() {
    v.add(a);   
    p.add(v);   
  }
  
}
