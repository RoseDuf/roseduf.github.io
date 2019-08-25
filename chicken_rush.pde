
/* @pjs preload="chicken1.png","chicken2.png","chickenw1.png","chickenw2.png","grass.png","seedgold2.png","seedgreen.png","seedred.png","seed.png","seedgold1.png"; */

//sound
//import processing.sound.*;
//SoundFile ding;

//background attributes
color backgroundColor = color(150,200,0); //pink background
PImage grass;

//seed variables
PImage seeds;
int seedSize = 20;
ArrayList <Seeds> multSeeds = new ArrayList(); //number of seeds generated at a time

int INTERVAL = 6500; // = 6.5 seconds interval for deletion of seed
float interval2 = 5000; // = 5 seconds intervel for creation of seed
int INTERVAL3 = 10000; // = 10 second interval for increase generation of seed

int nextSeed; //speed increases at each level
int newSpeed; //generation speed

//chicken attributes for constructor
float speed = 5;

//chicken image
int frame = 2; //how many images
PImage [] img = new PImage[frame];
PImage [] img2 = new PImage[frame];

int n; //counter that starts at 0
final int ANIMATION_SPEED = 170; //= .17 seconds
int firstTime; //When the current image was first displayed
 
Chicken chicken1;
Chicken chicken2;

//counter variables
int counter1 = 0;
int counter2 = 0;

//timer variables
Timer t;

 //setup() function
 void setup(){
   size(640,480);
   
   //sound setup
   //ding = new SoundFile(this, "ding.wav");
   
   //background setup
   grass = loadImage("grass.png");
   
   //seeds setup
   nextSeed = millis();
   seeds = loadImage("seed.png");
   
   //generate seed
   multSeeds.add(new Seeds(seedSize));
   
   //chicken setup
   img[0] = loadImage("chickenw1.png");
   img[1] = loadImage("chickenw2.png");
   img2[0] = loadImage("chicken1.png");
   img2[1] = loadImage("chicken2.png");
  
   //attribute timer to first occurence of image
   firstTime = millis();
   
   chicken1 = new Chicken(100, 380, speed, 40, img);
   chicken2 = new Chicken(540, 380, speed, 40, img2);
   
   //timer setup
   t = new Timer();
   t.startTimer();
 }
 
 //draw() function
 void draw(){
   //background
   image(grass,0,0);
   
    //seed behaviour
    
   if (millis() - nextSeed > interval2){
     if (multSeeds.size() <100){
       multSeeds.add(new Seeds(seedSize));
     }
     if (millis() - newSpeed > INTERVAL3){
       newSpeed = millis();
       interval2 = interval2/(1.5);
     }
   nextSeed = millis();
   }

   //go through arrayList to display and update
   for (int i=0; i<=multSeeds.size()-1; i++){
     multSeeds.get(i).update();
     multSeeds.get(i).display();
   }
    
   //chicken behaviour
   chicken1.update();
   chicken1.display(); 
   chicken2.update();
   chicken2.display();
   
   //collision
   for (int i=0; i<=multSeeds.size()-1; i++){
     if (chicken1.collidesWith(multSeeds.get(i))){
       println("seed eaten by p1");
       //ding.play();
       multSeeds.get(i).showSeed = false;
       multSeeds.remove(i);
       counter1 += 1;
     }
     else if (chicken2.collidesWith(multSeeds.get(i))){
       println("seed eaten by p2");
       //ding.play();
       multSeeds.get(i).showSeed = false;
       multSeeds.remove(i);
       counter2 += 1;
     }
   }
   
   textAlign(CENTER);
   textSize(30);
   text(counter1, 100, 50);
   
   textAlign(CENTER);
   textSize(30);
   text(counter2, 540, 50);
  
   
   //timer behaviour
   t.displayTimer();
 }
 
 //if key pressed chicken will stop moving and rotate on itself
 void keyPressed(){ 
    if(keyCode == SHIFT){
       chicken1.keyPressed();
    }
    else if(keyCode == UP){
       chicken2.keyPressed();
    }
  }
  
  //if key released, chicken will stop rotating and move at given speed
  void keyReleased(){
    if(keyCode == SHIFT){
       chicken1.keyReleased();
    }
    else if(keyCode == UP){
       chicken2.keyReleased();
    }

  }
 
//CHICKEN CLASS
 
 // Chicken
//
// A class that defines a chicken that can bounce around on the screen
// at a specific speed and rotates on itself,
// when a key is pressed 

class Chicken {
  
  //varibles to let you choose the initial location and speed of the chicken
  float x;
  float y;
  float speed;
  PImage [] imgarr;

  // The size of the Chicken
  float size;

  // The default fill colour of the Chicken
  color defaultColor;
  
  //varibles for rotate
  float theta = PI/2;
  float defaultSpeed = 0;

  // Chicken(tempX,tempY,tempSpeed,tempSize,tempImage)
  // Creates a Chicken with the provided values by remembering them.
  Chicken(float _x, float _y, float tempSpeed, float tempSize, PImage[] _imgarr) {
    x = _x;
    y = _y;
    speed = tempSpeed;
    size = tempSize;
    imgarr = _imgarr;
  }

  // update()
  // Adds the chicken's current velocity to its position
  void update() {
    if(defaultSpeed == 0){
    theta += 0.1;
    }
    
    //rotate object
    x += cos(theta +PI/2) * defaultSpeed;
    y += sin(theta +PI/2) * defaultSpeed;
    handleBounce();
    
  }

  // handleBounce()
  // Checks if the chicken is overlapping a side of the window
  // and if so reverses its speed appropriately
  void handleBounce() {
    // Check the left and right
    if (x - size/2 < 0 || x + size/2 > width) {
      // Bounce on the x-axis
      defaultSpeed = defaultSpeed * -1;
    }

    // Check the top and bottom
    if (y - size/2 < 0 || y + size/2 > height) {
      // Bounce on the y-axis
      defaultSpeed = defaultSpeed * -1;
    }

    // Make sure the chicken isn't off the edge
    x = constrain(x, size/2, width-size/2);
    y = constrain(y, size/2, height-size/2);
  }
  
  // display()
  // Draw an ellipse in the Chicken's location, with its size
  // and with its fill
  void display(){
    pushMatrix();
    translate(x, y);
    rotate(theta);
    
    //animate chicken
    if (millis() - firstTime >= ANIMATION_SPEED) {
      
    //Increment n, then compute its modulo
    //this will switch from the first image to the second
    n = ++n % imgarr.length;
    firstTime = millis();
    }
    
    //display image
    scale(1,-1); //put image upside down (otherwise chicken goes backwards)
    imageMode(CENTER);
    image(imgarr[n],size,0,size,size);
    popMatrix();
  }
  
  //collide method
  boolean collidesWith(Seeds seed){
    
    float distance = dist(x, y, seed.x, seed.y);
    float sumRadius = size/2 + (seed.size)/2;
    
    if (distance < sumRadius){
      return true;
    }
    else {
    return false;
    }
  }
  
  //if key pressed chicken will stop moving and rotate on itself
  void keyPressed(){ 
     defaultSpeed = speed;
  }
  
  
  void keyReleased(){
    defaultSpeed = 0;
  }
 
}

// SEEDS CLASS

//Randomly generated seeds

//normal seeds give 1 point 
//gold seeds give 2*points for 7 seconds
//red seeds give increased speed for 7 seconds
//radioactive green seeds make player 3 times bigger for 5 seconds

class Seeds{
  
  int timeSeed;
  boolean showSeed = true;
  
  //location variables
  float x = random(0,640);
  float y = random(0,480);
  int size;
  
  //speed of seed generation
  float generateSpeed;
  
  //constructor
  Seeds (int tempSize){
    size = tempSize;
    timeSeed = millis() + INTERVAL;
  }
  
  //every given number of seconds, a seed will be generated at a new random location
  void update(){
    if (millis() > timeSeed){
      showSeed = false;
    }
    
    // Make sure the seed isn't off the edge
    x = constrain(x, size/2, width-size/2);
    y = constrain(y, size/2, height-size/2);
  }
  
  //diplay the seed
  void display(){
    if (showSeed){
    imageMode(CENTER);
    image(seeds,x,y,20,20);
    }
  }
  
  
}
 
 
 // TIMER CLASS

//Timer

//timer goes to 60 seconds and then the game ends

class Timer {
  
  int start = 0; 
  int stop = 61000; //= 61 seconds
  boolean running = true;
  
  void startTimer(){
    start = millis();
  }
  
  //this method will return the amount of time elapsed from the start
  int getTimeElapsed(){
    int elapsed;
    if (running) {
      elapsed = (millis() - start); //a positive number
    }
    else {
      elapsed = (stop - start); //61-61 = 0;
    }
    return elapsed;
  }
  
  //number of seconds (61000/1000 = 61)
  int second() {
        return getTimeElapsed()/1000;
  }
  
  void time() {
    //if timer is still running, print seconds
    if (running == true){
      textAlign(CENTER);
      textSize(30);
      text(nf(t.second(), 2), 320, 50);
      
      //once 61 is reached, stop timer
      if (millis() > stop){
        running = false;
      }
    }
    //if running = false, print GAME OVER
    else {
      textAlign(CENTER);
      textSize(30);
      text("GAME OVER", 320, 50);
    }
    
  }
  
  //display time
  void displayTimer() {
    time();
  }
  
  
  
}