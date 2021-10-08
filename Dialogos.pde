void mostrarDialogos(String texto, String texto2, PFont fonte, int posx, int posy, int posx2, int posy2, int tamText, int recposX, int recposX2, int recposY,int recposY2, int tamrectX,int tamrectX2, int tamrectY,int tamrectY2) {
  rectMode(CENTER);
  fill(255, 150);
  noStroke();
  rect(recposX2, recposY2, tamrectX2, tamrectY2, 50);
  rect(recposX, recposY, tamrectX, tamrectY, 50);

  fill(0);
  textFont(fonte);
  textSize(tamText);
  text(texto2, posx2, posy2);
  textSize(tamText);
  textLeading(20);
  text(texto, posx, posy);
}
void mostrarCreditos(String texto, String texto2, PFont fontC, int posx, int posy, int posy2, int tamtext, int tamtext2) { 
  fill(255, 0, 0);
  textFont(fontC);
  textSize(tamtext);
  text(texto, posx, posy);
  fill(255, 255, 255);
  textSize(tamtext2);
  textLeading(20);
  text(texto2, posx, posy2);
}
