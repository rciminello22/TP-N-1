//Renzo Ciminello
//Link al video de explicación: https://www.youtube.com/watch?v=lPcd6kT1X6Y
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
