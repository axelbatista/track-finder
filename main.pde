PImage circuit;
Track track;
Racecar racecar;
ArrayList<PVector> spots = new ArrayList<PVector>();

void setup() {
  size(1010,1025);
  circuit = loadImage("mariocircuit-3.png");
  track = new Track();
  racecar = new Racecar();
  track.calcImage();
}

void draw() {
  image(circuit,0,0);
  //racecar.display();
  //racecar.update();
  //racecar.move();
  track.create();
}
