class Botones {
  void mostrarBotones(boolean boton, String b1, String b2, int tamtext, int posx, int posx2, int posy, int posy2, int alpha, int ancho, int largo) {
    textFont(s.font);
    rectMode(CENTER);
    fill(255, 0, 0, alpha);
    strokeWeight(1);
    stroke(255);
    rect(posx, posy, ancho, largo, 50);

    fill(255);
    textAlign(CENTER);
    textSize(tamtext);
    text(b1, posx, posy);

    if (boton) {
      textFont(s.font);
      rectMode(CENTER);
      fill(255, 0, 0, alpha);
      rect(posx2, posy2, ancho, largo, 50);

      fill(255);
      textAlign(CENTER);
      textSize(tamtext);
      text(b2, posx2, posy2);
    }
  }

  boolean botonApretado(int sx, int sy, int mx, int my, int ancho, int alto) {
    boolean Apretado = sx>mx && sx<mx+ancho && sy>my && sy<my+alto == true;
    return Apretado;
  }

  void funcionBotonesStory() {
    if (botonApretado(mouseX, mouseY, 250, 310, 100, 39)&& s.creditos) {
      s.pantalla = 1;
      s.creditos = false;
      //boton para ir a creditos
    } else if (botonApretado(mouseX, mouseY, 180, 310, 100, 39)&& s.pantalla==1) {
      s.pantalla=-1;
      //boton de siguiente en el menu
    } else if (botonApretado(mouseX, mouseY, 300, 310, 100, 39)&& s.pantalla==1) {
      s.pantalla=2;
      //boton de siguiente 2 pantalla
    } else if (botonApretado(mouseX, mouseY, 390, 220, 100, 40)&& s.pantalla==2) {
      s.pantalla=3;
      //boton de siguiente 3 pantalla
    } else if (botonApretado(mouseX, mouseY, 390, 220, 100, 40)&& s.pantalla==3) {
      s.pantalla=4;
      //boton de siguiente 4 pantalla
    } else if (botonApretado(mouseX, mouseY, 390, 220, 100, 40)&& s.pantalla==4) {
      s.pantalla=5;
      //botones "se la come"
    } else if (botonApretado(mouseX, mouseY, 380, 320, 100, 40)&& s.pantalla==5) {
      s.pantalla=6;
      //boton para volver al menu dentro del primer final
    } else if (botonApretado(mouseX, mouseY, 250, 310, 100, 40)&& s.pantalla==6) {
      s.pantalla=1;
      //boton "no se la come" pantalla 6
    } else if (botonApretado(mouseX, mouseY, 180, 311, 100, 40)&& s.pantalla==5) {
      s.pantalla=7;
      //boton "se rehusa"
    } else if (botonApretado(mouseX, mouseY, 180, 311, 100, 40)&& s.pantalla==7) {
      s.pantalla=8;
      //boton "Acepta"
    } else if (botonApretado(mouseX, mouseY, 300, 311, 100, 40)&& s.pantalla==7) {
      s.pantalla=9;
    } else if (botonApretado(mouseX, mouseY, 300, 311, 100, 40)&& s.pantalla==8) {
      s.pantalla=9;
    } else if (botonApretado(mouseX, mouseY, 300, 311, 100, 40)&& s.pantalla==9) {
      s.pantalla=10;
    } else if (botonApretado(mouseX, mouseY, 350, 240, 100, 40)&& s.pantalla==10) {
      s.pantalla=11;
      //Boton "no la dejan pasar"
    } else if (botonApretado(mouseX, mouseY, 163, 290, 130, 30)&& s.pantalla==11) {
      s.pantalla=12;
      //boton "la dejan pasar"
    } else if (botonApretado(mouseX, mouseY, 390, 222, 100, 40)&& s.pantalla==12) {
      s.pantalla=13;
    } else if (botonApretado(mouseX, mouseY, 390, 160, 100, 40)&& s.pantalla==13) {
      s.story=false;
      s.juego=true;
      s.pantalla=14;
    } else if (botonApretado(mouseX, mouseY, 380, 300, 100, 40)&& s.pantalla==14) {
      s.pantalla=15;
    } else if (botonApretado(mouseX, mouseY, 260, 310, 80, 40)&& s.pantalla==15) {
      s.pantalla=1;
    } else if (botonApretado(mouseX, mouseY, 333, 290, 134, 30)&& s.pantalla==11) {
      s.pantalla=16;
    } else if (botonApretado(mouseX, mouseY, 170, 290, 137, 30)&& s.pantalla==16) {
      s.pantalla=17;
    } else if (botonApretado(mouseX, mouseY, 333, 290, 134, 30)&& s.pantalla==16) {
      s.pantalla=18;
    } else if (botonApretado(mouseX, mouseY, 355, 325, 90, 30)&& s.pantalla==18) {
      s.pantalla=17;
    } else if (botonApretado(mouseX, mouseY, 355, 285, 134, 30)&& s.pantalla==17) {
      s.pantalla=19;
    } else if (botonApretado(mouseX, mouseY, 165, 250, 150, 40)&& s.pantalla==19) {
      s.pantalla=20;
    } else if (botonApretado(mouseX, mouseY, 350, 240, 100, 40)&& s.pantalla==20) {
      s.pantalla=21;
    } else if (botonApretado(mouseX, mouseY, 325, 250, 150, 40)&& s.pantalla==19) {
      s.pantalla=22;
    } else if (botonApretado(mouseX, mouseY, 350, 240, 100, 40)&& s.pantalla==21) {
      s.pantalla=22;
    } else if (botonApretado(mouseX, mouseY, 350, 290, 100, 40)&& s.pantalla==22) {
      s.pantalla=23;
    } else if (botonApretado(mouseX, mouseY, 380, 320, 100, 40)&& s.pantalla==23) {
      s.pantalla=24;
    } else if (botonApretado(mouseX, mouseY, 285, 310, 130, 40)&& s.pantalla==24) {
      s.pantalla=25;
    } else if (botonApretado(mouseX, mouseY, 250, 310, 100, 40)&& s.pantalla==25) {
      s.pantalla=1;
    }
  }
}
