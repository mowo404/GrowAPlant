Stem stem;
Rain rain;
Flower flower;
ArrayList<Rain> rainDrops = new ArrayList<Rain>();
PImage cloud;
PImage flowa;
PImage rainf;

void setup() {
  size(400, 500);

  cloud = loadImage("cloud.png");
  flowa = loadImage("flower2.png");
  rainf = loadImage("rain2.png");
  
  stem = new Stem(width/2, height - 100);
  flower = new Flower(width/2, height - 180);
}

void draw() {
  background(152, 240, 255);
  

  stem.display();
  flower.display();


  image(cloud, mouseX - 80, 50, 160, 100);


  if (mousePressed) {


    if (mouseX > mouseX - 80 && mouseX < (mouseX - 80) + 160 && mouseY > 50 && mouseY < 50 + 100) {
      Rain rainfall = new Rain();
      rainfall.p = new PVector(mouseX + random(-40, 25), 50 + 80);
      rainDrops.add(rainfall);
    }
  }


  for (Rain r : rainDrops) {
    r.update();
    r.display();
    
  if (r.p.y >= stem.y) { 
    stem.grow(); 
   }
  }
}
