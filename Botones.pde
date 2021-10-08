void mostrarBotones(boolean boton, String b1, String b2, int tamtext,int posx,int posx2, int posy,int posy2,int alpha, int ancho, int largo) {
  textFont(font);
  rectMode(CENTER);
  fill(255, 0, 0, alpha);
  stroke(255);
  rect(posx, posy, ancho, largo, 50);

  fill(255);
  textAlign(CENTER);
  textSize(tamtext);
  text(b1, posx, posy);


  if (boton) {
    textFont(font);
    rectMode(CENTER);
    fill(255, 0, 0, alpha);
    rect(posx2, posy2, ancho, largo, 50);

    fill(255);
    textAlign(CENTER);
    textSize(tamtext);
    text(b2, posx2, posy2);
  }
}
