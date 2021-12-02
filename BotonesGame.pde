class BotonesGame {
  int mx, my, mtam, alpha;
  BotonesGame() {
    mtam=200;
    mx=50;
    my=330;
    alpha=200;
  }

  void mostrarBoton() { 
    pushStyle();
    rectMode(CORNER);
    textAlign(CENTER);
    boton(mx-20, my, mtam-50, mtam/4);
    fill(0);
    textFont(s.game.fuente);
    textSize(18);
    text("Iniciar Juego", 105, 360);

    boton(mx+170, my, mtam-50, mtam/4); 
    fill(0);
    text("Como Jugar", 300, 360);

    boton(mx+360, my, mtam-50, mtam/4);
    fill(0);
    text("Objetivo", 490, 360);
    popStyle();
  }

  void boton(int mx, int my, int ancho, int alto ) {
    if (botonOver(mouseX, mouseY, mx, my, ancho, alto)) {
      fill(255, 255, 0, alpha);
    } else { 
      fill(196, 154, 47, alpha);
    }
    strokeWeight(5);
    stroke(229, 180, 56);
    rect(mx, my, ancho, alto, alto/4);
  }

  boolean botonApretado(int sx, int sy, int mx, int my, int ancho, int alto) {
    boolean Apretado = sx>mx && sx<mx+ancho && sy>my && sy<my+alto == true;
    return Apretado;
  }
  boolean botonOver(int sx, int sy, int mx, int my, int ancho, int alto) {
    if (sx>mx && sx<mx+ancho && sy>my && sy<my+alto) {
      return true;
    } else { 
      return false;
    }
  }
  void funcionBotonesGame() {
    //boton para iniciar juego
    if (botonApretado(mouseX, mouseY, 33, 330, 145, 50) && s.game.pantalla==1) {
      s.game.gameON = true;
      s.game.pantalla=2;
    }
    //boton de como jugar
    if (botonApretado(mouseX, mouseY, 223, 330, 150, 50) && s.game.pantalla==1) {
      s.game.pantalla=5;
    }
    // boton de objetivo
    if (botonApretado(mouseX, mouseY, 413, 330, 150, 50) && s.game.pantalla==1) {
      s.game.pantalla=6;
    }
    //boton para volver al menu dentro de "objetivo"
    if (botonApretado(mouseX, mouseY, 260, 260, 145, 80) && s.game.pantalla==6) {
      s.game.pantalla=1;
    }
    //boton para volver al menu dentro de "como jugar"
    if (botonApretado(mouseX, mouseY, 260, 260, 145, 80) && s.game.pantalla==5) {
      s.game.pantalla=1;
    }
    //boton de reintentar
    if (botonApretado(mouseX, mouseY, 103, 211, 160, 49) && s.game.pantalla==3) {
      s.game.pantalla=2;
      s.game.gameON = true;
      s.game.pa.puntos=5;
    }
    //boton para volver al menu dentro de "reintentar"
    if (botonApretado(mouseX, mouseY, 303, 211, 197, 49) && s.game.pantalla==3) {
      s.game.pantalla=1;
      s.game.gameON = true;
      s.game.pa.puntos=5;
    }
    //boton para seguir con el story una vez que ganas
    if (botonApretado(mouseX, mouseY, 193, 252, 194, 48) && s.game.pantalla==4) {
      s.game.pantalla=1;
      s.game.pa.puntos=5;
      s.story=true;
      s.juego=false;
    }
  }
}
