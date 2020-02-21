class Track {
  
  Track() {
  }
  void calcImage() {
    circuit.loadPixels();
    color h = circuit.get(320,120);
    for (int i = 0; i < circuit.pixels.length; i++) {
        float r = red(circuit.pixels[i]);
        float g = green(circuit.pixels[i]);
        float b = blue(circuit.pixels[i]);
        color p = color(r, g, b);
        if (p == h) {
        int x = i%circuit.width;
        int y = i/circuit.width;
        PVector v = new PVector(x,y);
        spots.add(v);
      }
    }
}
      
      void create() {
        for (int i = 0; i < spots.size() - 1; i++) {
       fill(255);
       noStroke();
       ellipse(spots.get(i).x,spots.get(i).y,10,10);
     }
        }
      
}
