class FlyingSaucer {
  PVector vel= new PVector(10, 0);
  int sz=50;
  PVector loc=new PVector(-sz/2,200);
  void display() {
    fill(0, 255,0);
    ellipse(loc.x, loc.y, sz, sz);
    loc.add(vel);
  }
}
//  void move(){
//    loc.x+=vel.x;
//  }
//}
