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
  game.bo.FuncionBoton();
}
