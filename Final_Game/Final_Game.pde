TPScreen TPS;
FlyingSaucer UFO;
void setup() {
  size(700, 700);  
  textSize(50);
  TPS= new TPScreen();
  UFO= new FlyingSaucer();
}

void draw() {
  UFO.display();
//  UFO.move();
  background(255);
  fill(0,255,0);
  text("Martian Madness", 150, 300);
  rect(200, 350, 100, 50);
  rect(400, 350, 100, 50);
//  if (mouseX<300 && mouseX>200 && mouseY<400 && mouseY>350 && mousePressed) {
//    p.display();
//  }
}

void mouseClicked(){
  if (mouseX<300 && mouseX>200 && mouseY<400 && mouseY>350) {
    TPS.display();
  }
}
