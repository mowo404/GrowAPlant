Stem stem;
Rainfall rainfall;
Flower flower;
PImage cloud;

void setup() {
  cloud = loadImage("cloud.png");
  size(400, 500);
}

void draw() {
  background(200, 220, 255);
  
  //draw cloud w pimage sprite
  fill(255);
  noStroke();
  image(cloud, mouseX, 50, 160, 100);
}
