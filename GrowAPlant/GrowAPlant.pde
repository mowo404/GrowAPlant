//declare classes and variables
Stem stem;
Rain rain;
Flower flower;
ArrayList<Rain> rainDrops = new ArrayList<Rain>();
PImage cloud, flowa, rainf,sun;
PFont font;
boolean stopRain = false;
int sunTime = 0;

void setup() {
  size(400, 500);

//initialize Image variables with corresponding image
  cloud = loadImage("cloud.png");
  flowa = loadImage("flower2.png");
  rainf = loadImage("rain2.png");
  sun = loadImage("sun.png");
//initialize font variable with corresponding font file  
  font = createFont("Minecraft.ttf", 60);

//initialize stem and flower objects
  stem = new Stem(width/2, height - 100);
  flower = new Flower(width/2, height - 180);
}

void draw() {
  background(152, 240, 255);
  
  //function to show stem and flower
  stem.display();
  flower.display();
  
 
  //if stopRain is false then draw cloud, if the rain stops and stopRain is true then draw sun function
  if (!stopRain) {
    //cloud moves with mouseX
    image(cloud, mouseX - 80, 50, 160, 100);
  } else {
    drawSun();
  }
  

//if mouse is pressed only on the cloud and stopRain is false then begin the rainfall
  if (mousePressed && !stopRain) {
    //checks whether mouse X and Y were in the cloud box when both coniditions above are met
    if (mouseX > (mouseX - 80) && mouseX < (mouseX - 80) + 160 && mouseY > 50 && mouseY < 50 + 100) {
      //initalize new rain object
      Rain rainfall = new Rain();
      //initalize starting position PVector for the rain
      rainfall.p = new PVector(mouseX + random(-40, 25), 50 + 80);
      //Add new rain object into our arraylist to allow rain.update and rain.display to run
      rainDrops.add(rainfall);
    }
  }

//for loop for our new rain object that calls rain display then rain update function (with our velocity and acceleration)
  for (Rain r : rainDrops) {
    r.display();
    r.update();
    
  //if the rain's position is on stem.y or stem.x then run stem.grow and flower.grow functions  
  if (r.p.y >= stem.y - 10 && r.p.y <= stem.y + 10 && r.p.x >= stem.x - 15 && r.p.x <= stem.x + 15) { 
    stem.grow(); 
    flower.grow();
   }
   //if stem and flower growth reach the max growth (they stop due to the function in class) and stop rain is false then stop the rain as well and set stopRain true and start sun time
  if (stem.growth == stem.maxGrowth && flower.growth == flower.maxGrowth) {
    if (!stopRain) {
    stopRain = true;
    sunTime = millis();   
    }
   }
  } 
}
//function for drawing the sun
void drawSun() {
  image(sun, 50, 50, 150, 150);
  //checks if 3 seconds of sun time have been passed, if so then run gameOver function to end the game
    if (millis() > sunTime + 3000) {
    gameOver();
  }
}

//function for game over printing the game over screen
void gameOver() {
  background(0);
  textSize(80);
  textAlign(CENTER);
  // set text font to uploaded font
  textFont(font);
  text("Game Over!", width/2, height/2);
  textSize(30);
  text("Click to Restart", width/2, height/2 + 60);
 
}
//mousePressed function for the click to restart option and game restart
void mousePressed() {
  //if stopRain is true and the time has surpassed 3 seconds then restart the game by making stopRain false again and resetting growth and sun time variables
  if(stopRain && millis() > sunTime + 3000) {
  stopRain = false;
  sunTime = 0;
  
  stem.growth = 0;
  flower.growth = 0;
  }
}
