class Juego {
  int pantalla=1;
  boolean gameON = false;
  PFont fuente, fuenteMenu;
  PImage menu, flecha;
  BotonesGame bo;
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
    bo = new BotonesGame();
    fuenteMenu = createFont("fuenteMenu.ttf", 15);
    fuente = createFont("fuente.ttf", 40);
    for (int i=0; i<polens.length; i++) {
      polens[i] = new Polen ();
    }
    for (int i=0; i<rama.length; i++) {
      rama[i] = new Ramita ();
    }
  }

  void mostrarJuego() {
    if (pantalla==2) {
      if (gameON) {
        fondo.stop();
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
      } fondo.play();
      fondo.loop();
    } 
    if (pantalla ==1) {
      gameON=false;
      menu.resize(600, 400);
      image(menu, width/2, height/2);
      bo.mostrarBoton();
      textFont(fuenteMenu);
      textSize(18);
      fill(255);
      text("La abeja haragana", 420, 35);
      text("en ACCIÓN", 470, 75);
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
      textAlign(CENTER);
      textFont(fuente);
      textSize(20);
      text("Apretar <- para moverse hacía la izquierda ", 300, 150);
      text("Apretar -> para moverse hacía la derecha ", 300, 200);
      if (botonOver(mouseX, mouseY, 260, 260, 80, 80)&& pantalla==5) {
        fill(255);
        ellipse(300, 300, 60, 60);
      } 
      image(flecha, 300, 300);
    }
    if (pantalla==6) {
      gameON=false;
      background(196, 154, 47);
      fill(0);
      textAlign(CENTER);
      textFont(fuente);
      textSize(16);
      text("Ganas cuando conseguis acumular 100 puntos \n atraves de la recoleccion del polen que cae \n(Cada uno vale 5).", 300, 70);
      text("Perdes si te tocan mucho las ramitas que \n caen y conseguis 0 puntos \n(Cada una te quita 5).", 300, 180);
      if (botonOver(mouseX, mouseY, 260, 260, 80, 80)&& pantalla==6) {
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
        colisionPolen.amp(0.2);
        colisionPolen.play();
      }
      if (pa.puntos>=100) {
        s.game.pantalla=4;
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
        colisionRama.amp(0.1);
        colisionRama.play();
      }
      if (pa.puntos<=0) {
        s.game.pantalla=3;
      }
    }
  }

  boolean botonOver(int sx, int sy, int cx, int cy, int ancho, int alto) {
    if (sx>cx && sx<cx+ancho && sy>cy && sy<cy+alto) {
      return true;
    } else return false;
  }
}
