class Asteroid extends GameObject {
  
  Asteroid() {
    location = new PVector (random(0,width), random(0,height));
    velocity = new PVector (0,1); 
    velocity.rotate( random(0, TWO_PI) ); 
  }
  
}
