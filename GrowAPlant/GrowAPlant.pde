Stem stem;
Rain rain;
Flower flower;
ArrayList<Rain> rainDrops = new ArrayList<Rain>();
PImage cloud;
PImage flowa;
PImage rainf;

void setup() {
  cloud = loadImage("cloud.png");
  flowa = loadImage("flower2.png");
  rainf = loadImage("rain2.png");
  size(400, 500);
  
  // Initialize stem and flower
  stem = new Stem(width/2, height - 100);
  flower = new Flower(width/2, height - 180); 


  //loop for raindrops, initializing rain and the pVector for the rainfall. Arraylist for rain droplets to create many of the rain drops.

}

void draw() {
  background(152, 240, 255);
  stem.display();
  flower.display();
  
   
  //draw cloud w pimage sprite
  fill(255);
  noStroke();
  image(cloud, mouseX-100, 50, 160, 100);
  
  //if mouse is pressed on these x and y cords then make rainfall
    if (mousePressed) {
      //check if the mouse is within the cloud x and y regions
      if(mouseX > mouseX - 100 && mouseX < + 100 && mouseY > 0 && mouseY < 100) {
    Rain rainfall = new Rain();
    rainfall.p = new PVector(mouseX + random(width/2), 100); //rainfall is positioned at the middle of the cloud and at random x and y positions.
    rainDrops.add(rainfall);
     }
    }

    for (int i = 0; i < rainDrops.size(); i++) {
    Rain r = rainDrops.get(i);
    r.update();
    r.display();
    }   
}
