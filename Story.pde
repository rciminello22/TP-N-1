class Story {
  PImage [] img = new PImage [21];
  PFont font, fontCreditos;
  int pantalla = 1;
  boolean creditos, juego = false, story=true;
  Botones b;
  Dialogos d;
  Juego game;
  Story() {
    game = new Juego();
    d = new Dialogos();
    b = new Botones();
    font = loadFont("ComicSansMS-Italic-20.vlw");
    fontCreditos = loadFont("Elephant-Italic-20.vlw");
    imageMode(CENTER);
    img[0]=loadImage("portada.jpg");
    for (int i = 1; i<img.length; i++) {
      img[i]= loadImage("foto_" +i+ ".png");
    }
  }

  void mostrarTodo() {
    println(mouseX, mouseY,pantalla);
    background(0);
    if (juego && story==false) {
      game.mostrarJuego();
    }
    if (story) {
      if (pantalla==-1) {
        creditos = true;
        d.mostrarCreditos("Creditos", "Alumno: Renzo Ciminello (88242/4) \n Comision 1 - 8 hrs \n Prof: José Luis Bugiolachi ", fontCreditos, width/2, height/3, 180, 30, 20);
        b.mostrarBotones(false, "VOLVER", "", 13, width/2, 230, 330, 330, 200, 100, 40);
      }
      if (pantalla==1) {
        image(img[0], 300, 200);
        b.mostrarBotones(true, "COMENZAR", "CREDITOS", 13, 350, 230, 330, 330, 200, 100, 40);
      }
      if (pantalla==2) {
        image(img[1], width/2, height/2);
        d.mostrarDialogos("Había una vez en una colmena, una abeja que no quería trabajar, \n es decir, recorría los árboles uno por uno para tomar el jugo de las flores; \n pero en vez de conservarlo para convertirlo en miel se lo tomaba del todo. \n Era, entonces, una abeja haragana.", "", font, 300, 305, 0, 0, 12, width/2, 0, 330, 0, 420, 0, 80, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
      }
      if (pantalla==3) {
        image(img[2], width/2, height/2);
        d.mostrarDialogos("Sus hermanas trabajadoras que estaban de guardia se disgustan por esto. \n Así que cuando volvió a la colmena dicidieron no dejarla entrar, \n por lo que tuvo que buscar un lugar para pasar la noche", "", font, 300, 315, 0, 0, 12, width/2, 0, 330, 0, 430, 0, 70, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
      }
      if (pantalla==4) {
        image(img[3], width/2, height/2);
        d.mostrarDialogos("Obligada a pasar la noche fuera, cansada, \n decide pasar la noche dentro de un tronco hueco, \n pero lo que no sabía era que dentro vivía una culebra \n que había elegido como guarida ese lugar", "", font, width/2, 100, 0, 0, 12, width/2, 0, 125, 0, 300, 0, 80, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
      }
      if (pantalla==5) {
        image(img[4], width/2, height/2);
        d.mostrarDialogos("Vaya vaya.. pero mira lo que \n he de encontrarme, una rica abejita, no has de ser \n muy trabajadora para estar aquí.. zzz", "Es cierto, \n ¡Adios mi vida!", font, 340, 140, 180, 260, 12, 340, 180, 155, 265, 300, 90, 60, 40);
        b.mostrarBotones(true, "SE LA COME", "NO SE LA COME", 12, 431, 230, 340, 330, 100, 100, 40);
      }
      if (pantalla==6) {
        d.mostrarCreditos("Primer Final", "La abejita fue comida por la serpiente :(", fontCreditos, width/2, height/2, 230, 30, 15);
        b.mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
      }

      if (pantalla==7) {
        image(img[5], width/2, height/2);
        d.mostrarDialogos("No te comeré siempre y cuando me ganes \n en una prueba que nadie ha podido superar.. zzz", "¡No me comas!", font, 340, 150, 180, 270, 12, 340, 180, 155, 265, 280, 90, 40, 40);
        b.mostrarBotones(true, "ACEPTA", "SE REHUSA", 13, 350, 230, 330, 330, 130, 100, 40);
      }
      if (pantalla==8) {
        image(img[6], width/2, height/2);
        d.mostrarDialogos("¿Enserio piensas que tienes la opción de elegir?.. \n Acepta o te comere ahora mismo abeja, \n -zzz- se me está acabando la paciencia.. ", "Solo estaba \n bromeando", font, 340, 145, 180, 260, 12, 340, 180, 155, 265, 280, 80, 65, 40);
        b.mostrarBotones(false, "ACEPTA", "", 13, 350, 230, 330, 330, 130, 130, 40);
      }
      if (pantalla==9) {
        image(img[7], width/2, height/2);
        d.mostrarDialogos("Haré bailar esos capullitos como nunca nadie \n lo ha hecho, no podras superarme abeja", "¡No puede ser! \n ahora como haré para ganar", font, 340, 145, 180, 260, 12, 340, 180, 150, 265, 270, 160, 45, 40);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 350, 230, 330, 330, 130, 100, 40);
      }
      if (pantalla==10) {
        image(img[8], width/2, height/2);
        d.mostrarDialogos("Está bien abeja, tu ganas, pero \n sal de donde quiera que estes.. zzz", "¡Solo saldré si me \n prometes que no me comeras!", font, 210, 275, 320, 45, 12, 210, 320, 280, 50, 225, 180, 45, 40);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
      }
      if (pantalla==11) {
        image(img[9], width/2, height/2);
        d.mostrarDialogos("Al dia siguiente, tras pasar la noche juntas. Cuando salió el sol, \n la abejita voló y lloró otra vez en silencio ante la puerta de la colmena..", "Mira quien regresó", font, width/2, 335, 170, 250, 12, 300, 170, 340, 250, 410, 130, 45, 30);
        b.mostrarBotones(true, "NO LA DEJAN PASAR", "LA DEJAN PASAR", 12, 400, 230, 300, 300, 130, 135, 25);
      }
      if (pantalla==12) {
        image(img[10], width/2, height/2);
        d.mostrarDialogos("Las abejas guardianas la dejan pasar \n por que saben que entendió la lección", "", font, 300, 320, 0, 0, 12, width/2, 0, 330, 0, 235, 0, 60, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 130, 100, 40);
      }
      if (pantalla==13) {
        image(img[11], width/2, height/2);
        d.mostrarDialogos("En adelante, ninguna como ella recogió \n tanto polen ni fabricó tanta miel", "", font, 300, 80, 0, 0, 12, width/2, 0, 85, 0, 235, 0, 60, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 180, 330, 130, 100, 40);
      }
      if (pantalla==14) {
        image(img[12], width/2, height/2);
        d.mostrarDialogos("Al llegar el otoño, antes de morir da una \n leccion de vida y trabajo a las jovenes abejas", "No es nuestra inteligencia, sino nuestro \n trabajo quien nos hace tan fuertes. \n Yo usé una sola vez de mi inteligencia, y fue \n para salvar mi vida. No habría necesitado \n de ese esfuerzo, si hubiera trabajado \n como todas. Me he cansado tanto volando \n de aquí para allá, como trabajando. \n Lo que me faltaba era la noción del deber, \n que adquirí aquella noche.", font, 250, 80, 205, 245, 12, 250, 205, 85, 300, 260, 250, 60, 150);
        b.mostrarBotones(false, "FIN", "", 13, 430, 230, 320, 330, 130, 100, 40);
      }
      if (pantalla==15) {
        d.mostrarCreditos("Segundo Final", "", fontCreditos, width/2, height/2, 230, 30, 15);
        b.mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
      }
      if (pantalla==16) {
        image(img[13], width/2, height/2);
        d.mostrarDialogos("La abeja intenta pasar a la fuerza", "", font, 330, 260, 170, 250, 12, 330, 0, 260, 0, 210, 110, 30, 0);
        b.mostrarBotones(true, "LOGRA PASAR", "NO LOGRA PASAR", 12, 400, 240, 300, 300, 130, 135, 25);
      }
      if (pantalla==17) {
        image(img[14], width/2, height/2);
        d.mostrarDialogos("Con sus alas recogidas y \n sus patas encogidas, se fue.. ", "", font, 380, 225, 170, 0, 12, 380, 0, 230, 0, 190, 0, 55, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 12, 400, 240, 300, 290, 130, 90, 30);
      }
      if (pantalla==18) {
        image(img[15], width/2, height/2);
        d.mostrarDialogos("Abeja, si no sales por tu propia \n cuenta, te sacaremos entre todas", "Está bien, ya me voy..", font, 300, 45, 170, 260, 12, 300, 170, 50, 260, 220, 120, 45, 30);
        b.mostrarBotones(false, "SIGUIENTE", "", 12, 400, 240, 340, 290, 130, 90, 30);
      }
      if (pantalla==19) {
        image(img[16], width/2, height/2);
        d.mostrarDialogos("Recuerda un panal que vió en sus viajes \n de haragana donde se necesitaba una reina", "", font, 300, 320, 0, 0, 12, width/2, 0, 330, 0, 250, 0, 60, 0);
        b.mostrarBotones(true, "SE DIRIGE HACÍA ALLÍ", "DECIDE NO IR", 12, 400, 240, 270, 270, 130, 150, 40);
      }
      if (pantalla==20) {
        image(img[17], width/2, height/2);
        d.mostrarDialogos("Por miedo a ser rechazada nuevamente \n decide quedarse en un hueco de \n  un arbol no muy lejano ", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 235, 180, 65, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
      }
      if (pantalla==21) {
        image(img[18], width/2, height/2);
        d.mostrarDialogos("Al llegar la noche, muerta \n de frío toma la decision de ir", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 195, 0, 55, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
      }
      if (pantalla==22) {
        image(img[19], width/2, height/2);
        d.mostrarDialogos("SE BUSCA REINA", "", font, 390, 115, 320, 45, 12, 390, 320, 115, 50, 120, 0, 25, 0);
        b.mostrarBotones(false, "ENTRA", "", 13, 400, 230, 310, 330, 130, 100, 40);
      }
      if (pantalla==23) {
        image(img[15], width/2, height/2);
        d.mostrarDialogos("Tras una eleccion unanime se consagra \n  reina del nuevo panal y ahora \n sería la -REINA BIENVENIDA-.", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 220, 0, 70, 0);
        b.mostrarBotones(false, "SIGUIENTE", "", 12, 431, 230, 340, 330, 100, 100, 40);
      }
      if (pantalla==24) {
        image(img[20], width/2, height/2);
        d.mostrarDialogos("Desde ese momento, todas las abejas \n se pusieron a trabajar, hasta ella misma.", "", font, 340, 250, 180, 260, 12, 340, 180, 255, 0, 260, 80, 50, 0);
        b.mostrarBotones(false, "FIN", "", 13, 350, 230, 330, 330, 130, 130, 40);
      }
      if (pantalla==25) {
        d.mostrarCreditos("Tercer y ultimo final", "", fontCreditos, width/2, height/2, 230, 30, 15);
        b.mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
      }
    }
  }
  void activarBotones() {
    if (story) {
      b.funcionBotonesStory();
    } else
      game.bo.funcionBotonesGame();
  }
}
