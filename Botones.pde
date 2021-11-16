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
    if (mouseX > 33 && mouseX <178 && mouseY > 330 && mouseY < 380) {
      fill(255, 255, 0);
      rect(mx-20, my, mtam-50, mtam/4, mtam/4);
    } else fill(196, 154, 47);
    rect(mx-20, my, mtam-50, mtam/4, mtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(18);
    text("Iniciar Juego", mx-5, my+30);

    if (mouseX > 223 && mouseX <368 && mouseY > 330 && mouseY < 380) {
      fill(255, 255, 0);
      rect(mx+170, my, mtam-50, mtam/4, mtam/4);
    } else fill(196, 154, 47);
    rect(mx+170, my, mtam-50, mtam/4, mtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(18);
    text("Como Jugar", mx+185, my+30);

    if (mouseX > 414 && mouseX <557 && mouseY > 330 && mouseY < 380) {
      fill(255, 255, 0);
      rect(mx+360, my, mtam-50, mtam/4, mtam/4);
    } else fill(196, 154, 47);
    rect(mx+360, my, mtam-50, mtam/4, mtam/4);
    strokeWeight(5);
    stroke(229, 180, 56);
    fill(0);
    textFont(game.fuente);
    textSize(18);
    text("Objetivo", mx+390, my+30);
  }

  void FuncionBoton() {
    //boton para iniciar juego
    if (mouseX > 33 && mouseX <178 && mouseY > 330 && mouseY < 380 && game.pantalla==1) {
      game.gameON = true;
      game.pantalla=2;
    }
    //boton de como jugar
    if (mouseX > 223 && mouseX <368 && mouseY > 330 && mouseY < 380 && game.pantalla==1) {
      game.pantalla=5;
    }
    // boton de objetivo
    if (mouseX > 413 && mouseX <558 && mouseY > 330 && mouseY < 380 && game.pantalla==1) {
      game.pantalla=6;
    }
    //boton para volver al menu dentro de "objetivo"
    if (mouseX > 260 && mouseX <340 && mouseY > 260 && mouseY < 340 && game.pantalla==6) {
      game.pantalla=1;
    }

    //boton para volver al menu dentro de "como jugar"
    if (mouseX > 260 && mouseX <340 && mouseY > 260 && mouseY < 340 && game.pantalla==5) {
      game.pantalla=1;
    }

    //boton de reintentar
    if (mouseX > 103 && mouseX <258 && mouseY > 206 && mouseY < 262 && game.pantalla==3) {
      game.pantalla=2;
      game.gameON = true;
      game.pa.puntos=5;
    }
    //boton para volver al menu dentro de "reintentar"
    if (mouseX > 283 && mouseX <478 && mouseY > 206 && mouseY < 262 && game.pantalla==3) {
      game.pantalla=1;
    }
    //boton para volver al menu una vez que ganas
    if (mouseX > 190 && mouseX <390 && mouseY > 247 && mouseY < 302 && game.pantalla==4) {
      game.pantalla=1;
      game.pa.puntos=5;
    }
  }
}
