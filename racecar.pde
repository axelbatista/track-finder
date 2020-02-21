class Racecar {
  
  PVector pos;
  PVector vel;
  PVector acc;
  
  Racecar() {
   pos = new PVector(200,200);
   vel = new PVector(0,0);
   acc = new PVector(0,0);
  }
  
  void display() {
   fill(120);
   stroke(0);
   ellipse(pos.x,pos.y,15,15);
  }
  
  void move() {
    for (int i = 0; i < spots.size() - 5000; i++) {
     PVector f = PVector.sub(spots.get(i + 5000), spots.get(i));
     f.setMag(1);
     applyForce(f);
    }
  }
  
  void applyForce(PVector f) {
    acc.add(f);
  }
  
  void update() {
   pos.add(vel);
   vel.add(acc);
   vel.limit(1);
   acc.mult(0);
  }
}
