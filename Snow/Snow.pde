int count = 1000;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] sz = new float[count];

void setup() {
  size(800, 600);
  for (int i = 0; i < count; i++) {
    loc[i] = new PVector(random(width), random(-height*2, -sz[i]/2));
    vel[i] = new PVector(0, random(1));
    acc[i] = new PVector(0, .01);
    sz[i] = random(3, 7);
  }
}

void draw() {
  background(0, 20, 50);
  for (int i = 0; i < count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(3);
    acc[i].x = random(-.03, .03);
    if (sz[i]>5) {
      fill(255);
    } else {
      fill(255, 90);
    }
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    if (loc[i].y - sz[i]/2 > height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}

