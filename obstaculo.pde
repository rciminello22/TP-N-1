class Ramita {
  float rx, ry, rtam, rvel;
  int max = 5;
  PImage [] obstaculo = new PImage [max];
  Ramita() {
    obstaculo[0] = loadImage("ramita.png");
    rtam = random(50, 55);
    rx = random(25, 580);
    ry = random(-200, 30);
    rvel = 7;
  }

  void mostrarRamita() {
    if (s.game.gameON) {
      for (int i=0; i<obstaculo.length; i++) {
        image(obstaculo[0], rx, ry, rtam, rtam);
      }
    }
  }

  void moverRamita() {
    if (s.game.gameON) {
      if (ry>height+rtam/2) {
        ry = random(-200, 30);
        rx = random(25, 580);
      }
      ry+=rvel;
    }
  }
}
