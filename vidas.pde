class Vidas {
  int maxVidas = 5;
  PImage [] vidas = new PImage [maxVidas]; 
  int posx, posy, vtam;
  Vidas() {
    posx=480;
    posy=380;
    vtam = 45;
    for (int j=0; j<vidas.length; j++) {
      vidas[j] = loadImage("vidas.png");
      vidas[j].resize(25, 20);
      if (vidas.length>maxVidas) {
        noLoop();
      }
    }
  }

  void mostrarVidas() {
    fill(0);
    textFont(game.fuente);
    textSize(20);
    text("VIDAS", posx+10, posy-20);
    for (int i=0; i<vidas.length; i++) {
      image(vidas[i], posx+i*vtam/2, posy);
    }
  }
}
