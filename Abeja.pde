class Abeja {
  PImage img, fondo;
  float bx, by, btam;
  Abeja() {
    bx = width/2;
    by = height-100;
    btam = 5;
    imageMode(CENTER);
    img = loadImage("abeja.png");
    fondo = loadImage("fondo.jpg");
    img.resize(60, 60);
    fondo.resize(600, 400);
  }

  void dibujarAbeja() {
    ellipse(bx, by+btam, btam*btam+2, btam*btam+2);
    image(img, bx, by);
  }

  void moverAbeja() {
    if (keyPressed) {
      if (keyCode==RIGHT && bx <= width-30) {
        bx+=5;
      } else if (keyCode==LEFT && bx > 23) {
        bx-=5;
      }
    }
  }

  void dibujarFondo() {
    image(fondo, width/2, height/2);
  }
}
