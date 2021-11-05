//TRATA DE ALCANZAR LOS 100 PUNTOS
//Renzo Ciminello
Juego game;
void setup() {

  size(600, 400);
  game = new Juego();
}

void draw() { 
  game.mostrar();
}

void mousePressed() {
  if (mouseX > 50 && mouseX <250 && mouseY > 330 && mouseY < 380 && game.pantalla==1) {
    game.gameON = true;
    game.pantalla=2;
  }
  if (mouseX > 215 && mouseX <422 && mouseY > 206 && mouseY < 262 && game.pantalla==3) {
    game.pantalla=1;
    game.sc.puntos=5;
  }
  if (mouseX > 190 && mouseX <390 && mouseY > 247 && mouseY < 302 && game.pantalla==4) {
    game.pantalla=1;
    game.sc.puntos=5;
  }
}
