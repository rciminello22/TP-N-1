class Juego {
  int pantalla=1;
  boolean gameON = false;
  PFont fuente, fuenteMenu;
  PImage menu, flecha;
  Botones bo;
  Abeja b;
  Ramita [] rama = new Ramita [5];
  Polen [] polens = new Polen [10];
  Polen p;
  Ramita r;
  Pantallas pa;
  Juego() {
    menu = loadImage("fondoMENU.jpg");
    flecha = loadImage("flecha.png");
    flecha.resize(80, 80);
    pa = new Pantallas();
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
      colisionPolen();
      colisionObstaculo();
      pa.mostrarScore();
    } else if (pantalla ==1) {
      gameON=false;
      background(0);
      fill(255);
      menu.resize(600, 400);
      image(menu, width/2, height/2);
      bo.mostrarBoton();
    }  
    if (pantalla==3) {
      gameON=false;
      pa.mostrarGameOver();
    }
    if (pantalla==4) {
      gameON=false;
      pa.mostrarGanar();
    }
    if (pantalla==5) {
      gameON=false;
      background(196, 154, 47);
      fill(0);
      textFont(fuente);
      textSize(20);
      text("Apretar <- para moverse hacía la izquierda ", 90, 150);
      text("Apretar -> para moverse hacía la derecha ", 90, 200);
      if (mouseX > 260 && mouseX <340 && mouseY > 260 && mouseY < 340 && pantalla==5) {
        fill(255);
        ellipse(300, 300, 60, 60);
      } 
      image(flecha, 300, 300);
    }
    if (pantalla==6) {
      gameON=false;
      background(196, 154, 47);
      fill(0);
      textFont(fuente);
      textSize(16);
      text("Ganas cuando conseguis acumular 100 puntos \n atraves de la recoleccion del polen que cae \n(Cada uno vale 5).", 90, 70);
      text("Perdes si te tocan mucho las ramitas que \n caen y conseguis 0 puntos \n(Cada una te quita 5).", 90, 180);
      if (mouseX > 260 && mouseX <340 && mouseY > 260 && mouseY < 340 && pantalla==6) {
        fill(255);
        ellipse(300, 300, 60, 60);
      } 
      image(flecha, 300, 300);
    }
  }

  void colisionPolen() {
    for (int i=0; i<polens.length; i++) {
      float distancia = dist(b.bx, b.by, polens[i].px, polens[i].py);
      if (distancia<=polens[i].ptam/2+b.btam*2) {
        polens[i].px = random(30, 580);
        polens[i].py = random(-200, 30);
        pa.puntos+=5;
      }
      if (pa.puntos>=100) {
        game.pantalla=4;
      }
    }
  }

  void colisionObstaculo() {
    for (int i=0; i<rama.length; i++) {
      float distan = dist(b.bx, b.by, rama[i].rx, rama[i].ry);
      if (distan<rama[i].rtam/2+b.btam*2) {
        rama[i].rx = random(30, 580);
        rama[i].ry = random(-200, 30);
        pa.puntos-=5;
      }
      if (pa.puntos<=0) {
        game.pantalla=3;
      }
    }
  }
}
