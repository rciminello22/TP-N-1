class Botones {
  int mx, my, mtam, alpha;
  Botones() {
    mtam=200;
    mx=50;
    my=330;
    alpha=155;
  }

  void mostrarBoton() {
    textFont(game.fuenteMenu);
    textSize(18);
    fill(255);
    text("La abeja haragana", mx+220, my-290);
    text("en ACCIÓN", mx+360, my-240);
    if (mouseX > 50 && mouseX <250 && mouseY > 330 && mouseY < 380) {
      fill(255, 255, 0);
      rect(mx, my, mtam, mtam/4, mtam/4);
    } else fill(196, 154, 47);
    rect(mx, my, mtam, mtam/4, mtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(20);
    text("Iniciar Juego", mx+30, my+30);
  }
}
