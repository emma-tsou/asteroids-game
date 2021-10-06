class Ship {
  
  //1. Instance Variables
  int lives;
  PVector location;
  PVector velocity;
  PVector direction;
  //2. Constructor(s)
  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }
 
  
  //3. Behavior Functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    
    popMatrix();
  }
  
  void act() {
    
  }
}
