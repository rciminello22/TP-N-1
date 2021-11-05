class gameOver {
  int gx, gy, gtam;
  gameOver() {
    gtam=200;
    gx=100;
    gy=330;
  }

  void mostrarGameOver() {
    background(0);
    fill(255,0,0);
    textSize(30);
    text("Perdiste", gx+130, gy-150);
    if (mouseX > 215 && mouseX <422 && mouseY > 206 && mouseY < 262) {
      fill(255, 255, 0);
      rect(gx+100, gy-120, gtam, gtam/4, gtam/4);
    } else fill(196, 154, 47);
    rect(gx+100, gy-120, gtam, gtam/4, gtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(22);
    text("Reiniciar", gx+140, gy-90);
  }
}
