//link al video explicativo: https://www.youtube.com/watch?v=NzSEp7g4XbY

import processing.sound.*;
SoundFile fondo, colisionPolen, colisionRama;

Story s;
void setup() {
  s = new Story();
  size(600, 400);
  fondo = new SoundFile(this, "base.aiff");
  colisionPolen = new SoundFile(this, "Polen.aiff");
  colisionRama = new SoundFile(this, "Rama.aiff");
  fondo.amp(0.3);
  fondo.play();
  fondo.loop();
}
void draw() {
  s.mostrarTodo();
}

void mousePressed() {
  s.activarBotones();
}
