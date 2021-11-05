class Juego {
  int pantalla=1;
  boolean gameON = false;
  PFont fuente, fuenteMenu;
  PImage menu;
  Ganar w;
  Botones bo;
  Score sc;
  Abeja b;
  Vidas v;
  Ramita [] rama = new Ramita [5];
  Polen [] polens = new Polen [10];
  Polen p;
  Ramita r;
  gameOver fin;
  Juego() {
    menu = loadImage("fondoMENU.jpg");
    w = new Ganar();
    fin = new gameOver();
    sc = new Score();
    v = new Vidas();
    b = new Abeja ();
    bo = new Botones ();
    fuenteMenu = createFont("fuenteMenu.ttf", 15);
    fuente = createFont("fuente.ttf", 40);
    for (int i=0; i<polens.length; i++) {
      polens[i] = new Polen ();
    }
    for (int i=0; i<rama.length; i++) {
      rama[i] = new Ramita ();
    }
  }

  void mostrar() {
    println(mouseX, mouseY, pantalla);
    if (gameON && pantalla==2) {
      b.dibujarFondo();
      for (int i=0; i<polens.length; i++) {
        polens[i].dibujarPolen();
        polens[i].moverPolen();
      }
      for (int i=0; i<rama.length; i++) {
        rama[i].mostrarRamita();
        rama[i].moverRamita();
      }
      b.moverAbeja();
      b.dibujarAbeja();
      //v.mostrarVidas();
      colisionPolen();
      colisionObstaculo();
      sc.mostrarScore();
    } else if (pantalla ==1) {
      background(0);
      fill(255);
      menu.resize(600, 400);
      image(menu, width/2, height/2);
      bo.mostrarBoton();
    }  
    if (pantalla==3) {
      fin.mostrarGameOver();
      game.gameON=false;
    }
    if (pantalla==4) {
      w.mostrarGanar();
      game.gameON=false;
    }
  }

  void colisionPolen() {
    for (int i=0; i<polens.length; i++) {
      float distancia = dist(b.bx, b.by, polens[i].px, polens[i].py);
      if (distancia<=polens[i].ptam/2+b.btam*2) {
        polens[i].px = random(30, 580);
        polens[i].py = random(-200, 30);
        sc.puntos+=5;
      }
      if (sc.puntos>=100) {
        game.pantalla=4;
      }
    }
  }

  void colisionObstaculo() {
    for (int i=0; i<rama.length; i++) {
      float distan = dist(b.bx, b.by, rama[i].rx, rama[i].ry);
      if (distan<rama[i].rtam/2+b.btam/2) {
        rama[i].rx = random(30, 580);
        rama[i].ry = random(-200, 30);
        sc.puntos-=5;
      }
      if (sc.puntos<=0) {
        game.pantalla=3;
      }
    }
  }
}
