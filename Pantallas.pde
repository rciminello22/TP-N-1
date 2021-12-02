class Pantallas {
  int puntos = 5;
  int gx, gy, gtam;
  Pantallas() {
    gtam=200;
    gx=100;
    gy=330;
  }
  
  void mostrarGameOver() {
    pushStyle();
    rectMode(CORNER);
    textAlign(CENTER);
    background(0);
    fill(255, 0, 0);
    textSize(30);
    text("Perdiste", 300, 150);
    textSize(22);
    s.game.bo.boton(gx, gy-120, gtam-40, gtam/4);
    fill(0);
    text("Reintentar", 175, 245);
    s.game.bo.boton(gx+200, gy-120, gtam, gtam/4);
    fill(0);
    text("Volver al menu", 400, 245);
    popStyle();
  }

  void mostrarGanar() {
    pushStyle();
    rectMode(CORNER);
    textAlign(CENTER);
    background(0);
    fill(70, 203, 64);
    textSize(30);
    text("¡Ganaste!", 300, 150);
    textSize(25);
    fill(255, 255, 255);
    text("Lograste conseguir 100 puntos", 300, 200);
    strokeWeight(1);
    stroke(229, 180, 56);
    s.game.bo.boton(gx+90, gy-80, gtam, gtam/4);
    fill(0);
    text("Siguiente", 280, 280);
    popStyle();
  }

  void mostrarScore() {
    textFont(s.game.fuente);
    textSize(20);
    fill(0);
    text("PUNTOS: " + puntos, gx-30, gy+60);
  }
}
