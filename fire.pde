class Fire extends GameObject {
  int t; //transparency

  Fire() {
    lives = 1;
    size = 10;
    t    = 255;
   location =  myShip.location.copy();
   velocity = myShip.direction.copy();
   velocity.rotate(PI+random(-0.5, +0.5)); 
   velocity.setMag(3); 
  }

  void show() {
    noStroke();
    fill(255,0,0,t);
    square(location.x, location.y, size);
     }

  void act() {
    super.act();
    t = t - 5;
    if (t <= 0) lives = 0;
  }
}
