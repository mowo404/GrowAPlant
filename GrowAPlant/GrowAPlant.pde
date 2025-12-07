Stem stem;
Rain rain;
Flower flower;
ArrayList<Rain> rainDrops = new ArrayList<Rain>();
PImage cloud, flowa, rainf,sun;
boolean stopRain = false;
int sunTime = 0;

void setup() {
  size(400, 500);

  cloud = loadImage("cloud.png");
  flowa = loadImage("flower2.png");
  rainf = loadImage("rain2.png");
  sun = loadImage("sun.png");
  
  stem = new Stem(width/2, height - 100);
  flower = new Flower(width/2, height - 180);
}

void draw() {
  background(152, 240, 255);
  
  stem.display();
  flower.display();
  
 
  
  if (!stopRain) {
    image(cloud, mouseX - 80, 50, 160, 100);
  } else {
    drawSun();
  }
  


  if (mousePressed && !stopRain) {
    if (mouseX > (mouseX - 80) && mouseX < (mouseX - 80) + 160 && mouseY > 50 && mouseY < 50 + 100) {
      Rain rainfall = new Rain();
      rainfall.p = new PVector(mouseX + random(-40, 25), 50 + 80);
      rainDrops.add(rainfall);
    }
  }

  for (Rain r : rainDrops) {
    r.update();
    r.display();
    
  if (r.p.y >= stem.y - 10 && r.p.y <= stem.y + 10 && r.p.x >= stem.x - 15 && r.p.x <= stem.x + 15) { 
    stem.grow(); 
    flower.grow();
   }
  if (stem.growth == stem.maxGrowth && flower.growth == flower.maxGrowth) {
    stopRain = true;
    
    if (!stopRain) {
    sunTime = millis();   
    }
   }
  } 
}

void drawSun() {
  image(sun, 50, 50, 150, 150);
  
    if (millis() > sunTime + 6500) {
    gameOver();
  }
}

void gameOver() {
  background(0);
  textSize(80);
  textAlign(CENTER);
  PFont font;
  font = createFont("Minecraft.ttf", 60);
  textFont(font);
  text("Game Over!", width/2, height/2);
  
  textSize(30);
  text("Click to Restart", width/2, height/2 + 60);
 
}

void mousePressed() {
  if(stopRain && millis() > sunTime + 6500) {
  stopRain = false;
  sunTime = 0;
  
  stem.growth = 0;
  flower.growth = 0;
  }
}
