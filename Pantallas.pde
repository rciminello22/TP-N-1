class Pantallas {
  int puntos = 5;
  int gx, gy, gtam;
  Pantallas() {
    gtam=200;
    gx=100;
    gy=330;
  }

  void mostrarGameOver() {
    background(0);
    fill(255, 0, 0);
    textSize(30);
    text("Perdiste", gx+130, gy-180);
    if (mouseX > 103 && mouseX <258 && mouseY > 206 && mouseY < 262) {
      fill(255, 255, 0);
      rect(gx, gy-120, gtam-40, gtam/4, gtam/4);
    } else fill(196, 154, 47);
    rect(gx, gy-120, gtam-40, gtam/4, gtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textSize(22);
    text("Reintentar", gx+20, gy-90);

    if (mouseX > 283 && mouseX <478 && mouseY > 206 && mouseY < 262) {
      fill(255, 255, 0);
      rect(gx+200, gy-120, gtam, gtam/4, gtam/4);
    } else fill(196, 154, 47);
    rect(gx+200, gy-120, gtam, gtam/4, gtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(22);
    text("Volver al menu", gx+215, gy-90);
  }

  void mostrarGanar() {
    background(0);
    fill(255, 0, 0);
    textSize(25);
    text("¡Ganaste!", gx+130, gy-200);
    text("Lograste conseguir 100 puntos", gx, gy-130);
    if (mouseX > 190 && mouseX <390 && mouseY > 247 && mouseY < 302) {
      fill(255, 255, 0);
      rect(gx+90, gy-80, gtam, gtam/4, gtam/4);
    } else fill(196, 154, 47);
    rect(gx+90, gy-80, gtam, gtam/4, gtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(22);
    text("Ir al menu", gx+120, gy-50);
  }

  void mostrarScore() {
    textFont(game.fuente);
    textSize(20);
    fill(0);
    text("PUNTOS: " + puntos, gx-80, gy+60);
  }
}
