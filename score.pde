class Score {
  int puntos = 5;
  int sx, sy;
  Score() {
    sx=20;
    sy=390;
  }

  void mostrarScore() {
    textFont(game.fuente);
    textSize(20);
    fill(0);
    text("PUNTOS: " + puntos, sx, sy);
  }
}
