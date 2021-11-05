class Ganar {
  int wx, wy, wtam;
  Ganar() {
    wx=150;
    wy=100;
    wtam=200;
  }

  void mostrarGanar() {
    background(0);
    fill(255, 0, 0);
    textSize(25);
    text("¡Ganaste!", wx+70, wy+60);
    text("Lograste conseguir 100 puntos", wx-50, wy+100);
    if (mouseX > 190 && mouseX <390 && mouseY > 247 && mouseY < 302) {
      fill(255, 255, 0);
      rect(wx+40, wy+150, wtam, wtam/4, wtam/4);
    } else fill(196, 154, 47);
    rect(wx+40, wy+150, wtam, wtam/4, wtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(22);
    text("Ir al menu", wx+70, wy+180);
  }
}
