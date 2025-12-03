Stem stem;
Rain rain;
Flower flower;
ArrayList<Rain> rainDrops = new ArrayList<Rain>();
PImage cloud;
PImage flowa;

void setup() {
  cloud = loadImage("cloud.png");
  flowa = loadImage("flower2.png");
  size(400, 500);
  
  // Initialize stem and flower
  stem = new Stem(width/2, height - 100);
  flower = new Flower(width/2, height - 180); 


  //loop for raindrops
   for (int i=0; i < 50; i++) {
    Rain rainfall = new Rain();
    rainfall.p = new PVector(random(width), random(400, 0)); //rainfall is positioned at the middle of the screen and at random x and y positions.
    rainDrops.add(rainfall);
 }
}

void draw() {
  background(200, 220, 255);
  stem.display();
  flower.display();
  
  //draw cloud w pimage sprite
  fill(255);
  noStroke();
  image(cloud, mouseX, 50, 160, 100);
  
    for (int i = 0; i < rainDrops.size(); i++) {
    Rain r = rainDrops.get(i);
    r.update();
    r.display();
    }   
}
