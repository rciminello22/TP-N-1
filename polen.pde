class Polen {
  float px, py, ptam, pvel;
  Polen() {
    px = random(25, 580);
    ptam = random(8, 18);
    py = random(-200, 30);
    pvel =3;
  }

  void dibujarPolen() {
    noStroke();
    fill(255, 255, 0);
    ellipse(px+ptam/2, py, ptam, ptam);
  }

  void moverPolen() {
    if (py>height) {
      py = random(-200, 100);
    }
    py+=pvel;
  }
}
