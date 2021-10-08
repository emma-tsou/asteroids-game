class Ship extends GameObject{
  
  //1. Instance Variables
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
    rotate(direction.heading());
    noFill(); 
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0); 

    popMatrix();
  }
  
  void act() {
   super.act();
    location.add(velocity); 

    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate( -radians(5) );
    if (rightkey) direction.rotate( radians(5) ); 
    if (spacekey) myBullets.add(new Bullet());
  
  }
}
