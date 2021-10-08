//LINK AL VIDEO DE EXPLICACIÓN: https://www.youtube.com/watch?v=oUKYUTsRNP4
int maxImg = 21;
PImage [] img = new PImage [maxImg];
PFont font, fontCreditos;
int pantalla = 1;
boolean creditos;
boolean Final = false;
void setup() {
  size(600, 400);
  font = loadFont("ComicSansMS-Italic-20.vlw");
  fontCreditos = loadFont("Elephant-Italic-20.vlw");
  imageMode(CENTER);
  img[0]= loadImage("portada.jpg");
  img[1]= loadImage("1.png");
  img[2]= loadImage("2.png");
  img[3]= loadImage("3.png");
  img[4]= loadImage("4.png");
  img[5]=loadImage("5.png");
  img[6]=loadImage("6.png");
  img[7]=loadImage("7.png");
  img[8]=loadImage("8.png");
  img[9]=loadImage("9.png");
  img[10]=loadImage("10.png");
  img[11]=loadImage("11.png");
  img[12]=loadImage("12.png");
  img[13]=loadImage("13.png");
  img[14]=loadImage("14.png");
  img[15]=loadImage("15.png");
  img[16]=loadImage("16.png");
  img[17]=loadImage("17.png");
  img[18]=loadImage("18.png");
  img[19]=loadImage("19.png");
  img[20]=loadImage("20.png");
}
void draw() {
  background(0);
  println(pantalla, mouseX, mouseY);
  if (pantalla==-1) {
    creditos = true;
    mostrarCreditos("Creditos", "Alumno: Renzo Ciminello (88242/4) \n Comision 1 - 8 hrs \n Prof: José Luis Bugiolachi ", fontCreditos, width/2, height/2, 230, 30, 15);
    mostrarBotones(false, "VOLVER", "", 13, width/2, 230, 330, 330, 200, 100, 40);
  }
  if (pantalla==1) {
    image(img[0], 300, 200);
    mostrarBotones(true, "COMENZAR", "CREDITOS", 13, 350, 230, 330, 330, 200, 100, 40);
  }
  if (pantalla==2) {
    image(img[1], width/2, height/2);
    mostrarDialogos("Había una vez en una colmena, una abeja que no quería trabajar, \n es decir, recorría los árboles uno por uno para tomar el jugo de las flores; \n pero en vez de conservarlo para convertirlo en miel se lo tomaba del todo. \n Era, entonces, una abeja haragana.", "", font, 300, 305, 0, 0, 12, width/2, 0, 330, 0, 420, 0, 80, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
  }
  if (pantalla==3) {
    image(img[2], width/2, height/2);
    mostrarDialogos("Sus hermanas trabajadoras que estaban de guardia se disgustan por esto. \n Así que cuando volvió a la colmena dicidieron no dejarla entrar, \n por lo que tuvo que buscar un lugar para pasar la noche", "", font, 300, 315, 0, 0, 12, width/2, 0, 330, 0, 430, 0, 70, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
  }
  if (pantalla==4) {
    image(img[3], width/2, height/2);
    mostrarDialogos("Obligada a pasar la noche fuera, cansada, \n decide pasar la noche dentro de un tronco hueco, \n pero lo que no sabía era que dentro vivía una culebra \n que había elegido como guarida ese lugar", "", font, width/2, 100, 0, 0, 12, width/2, 0, 125, 0, 300, 0, 80, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 100, 100, 40);
  }
  if (pantalla==5) {
    image(img[4], width/2, height/2);
    mostrarDialogos("Vaya vaya.. pero mira lo que \n he de encontrarme, una rica abejita, no has de ser \n muy trabajadora para estar aquí.. zzz", "Es cierto, \n ¡Adios mi vida!", font, 340, 140, 180, 260, 12, 340, 180, 155, 265, 300, 90, 60, 40);
    mostrarBotones(true, "SE LA COME", "NO SE LA COME", 12, 431, 230, 340, 330, 100, 100, 40);
  }
  if (pantalla==6) {
    mostrarCreditos("Primer Final", "La abejita fue comida por la serpiente :(", fontCreditos, width/2, height/2, 230, 30, 15);
    mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
  }

  if (pantalla==7) {
    image(img[5], width/2, height/2);
    mostrarDialogos("No te comeré siempre y cuando me ganes \n en una prueba que nadie ha podido superar.. zzz", "¡No me comas!", font, 340, 150, 180, 270, 12, 340, 180, 155, 265, 280, 90, 40, 40);
    mostrarBotones(true, "ACEPTA", "SE REHUSA", 13, 350, 230, 330, 330, 130, 100, 40);
  }
  if (pantalla==8) {
    image(img[6], width/2, height/2);
    mostrarDialogos("¿Enserio piensas que tienes la opción de elegir?.. \n Acepta o te comere ahora mismo abeja, \n -zzz- se me está acabando la paciencia.. ", "Solo estaba \n bromeando", font, 340, 145, 180, 260, 12, 340, 180, 155, 265, 280, 80, 65, 40);
    mostrarBotones(false, "ACEPTA", "", 13, 350, 230, 330, 330, 130, 130, 40);
  }
  if (pantalla==9) {
    image(img[7], width/2, height/2);
    mostrarDialogos("Haré bailar esos capullitos como nunca nadie \n lo ha hecho, no podras superarme abeja", "¡No puede ser! \n ahora como haré para ganar", font, 340, 145, 180, 260, 12, 340, 180, 150, 265, 270, 160, 45, 40);
    mostrarBotones(false, "SIGUIENTE", "", 13, 350, 230, 330, 330, 130, 100, 40);
  }
  if (pantalla==10) {
    image(img[8], width/2, height/2);
    mostrarDialogos("Está bien abeja, tu ganas, pero \n sal de donde quiera que estes.. zzz", "¡Solo saldré si me \n prometes que no me comeras!", font, 210, 275, 320, 45, 12, 210, 320, 280, 50, 225, 180, 45, 40);
    mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
  }
  if (pantalla==11) {
    image(img[9], width/2, height/2);
    mostrarDialogos("Al dia siguiente, tras pasar la noche juntas. Cuando salió el sol, \n la abejita voló y lloró otra vez en silencio ante la puerta de la colmena..", "Mira quien regresó", font, width/2, 335, 170, 250, 12, 300, 170, 340, 250, 410, 130, 45, 30);
    mostrarBotones(true, "NO LA DEJAN PASAR", "LA DEJAN PASAR", 12, 400, 230, 300, 300, 130, 135, 25);
  }
  if (pantalla==12) {
    image(img[10], width/2, height/2);
    mostrarDialogos("Las abejas guardianas la dejan pasar \n por que saben que entendió la lección", "", font, 300, 320, 0, 0, 12, width/2, 0, 330, 0, 235, 0, 60, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 240, 330, 130, 100, 40);
  }
  if (pantalla==13) {
    image(img[11], width/2, height/2);
    mostrarDialogos("En adelante, ninguna como ella recogió \n tanto polen ni fabricó tanta miel", "", font, 300, 80, 0, 0, 12, width/2, 0, 85, 0, 235, 0, 60, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 440, 230, 180, 330, 130, 100, 40);
  }
  if (pantalla==14) {
    image(img[12], width/2, height/2);
    mostrarDialogos("Al llegar el otoño, antes de morir da una \n leccion de vida y trabajo a las jovenes abejas", "No es nuestra inteligencia, sino nuestro \n trabajo quien nos hace tan fuertes. \n Yo usé una sola vez de mi inteligencia, y fue \n para salvar mi vida. No habría necesitado \n de ese esfuerzo, si hubiera trabajado \n como todas. Me he cansado tanto volando \n de aquí para allá, como trabajando. \n Lo que me faltaba era la noción del deber, \n que adquirí aquella noche.", font, 250, 80, 205, 245, 12, 250, 205, 85, 300, 260, 250, 60, 150);
    mostrarBotones(false, "FIN", "", 13, 430, 230, 320, 330, 130, 100, 40);
  }
  if (pantalla==15) {
    mostrarCreditos("Segundo Final", "", fontCreditos, width/2, height/2, 230, 30, 15);
    mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
  }
  if (pantalla==16) {
    image(img[13], width/2, height/2);
    mostrarDialogos("La abeja intenta pasar a la fuerza", "", font, 330, 260, 170, 250, 12, 330, 0, 260, 0, 210, 110, 30, 0);
    mostrarBotones(true, "LOGRA PASAR", "NO LOGRA PASAR", 12, 400, 240, 300, 300, 130, 135, 25);
  }
  if (pantalla==17) {
    image(img[14], width/2, height/2);
    mostrarDialogos("Con sus alas recogidas y sus patas encogidas, se fue. ", "", font, 330, 260, 170, 250, 12, 330, 0, 260, 0, 300, 0, 30, 0);
    mostrarBotones(false, "SIGUIENTE", "", 12, 400, 240, 300, 290, 130, 90, 30);
  }
  if (pantalla==18) {
    image(img[15], width/2, height/2);
    mostrarDialogos("Abeja, si no sales por tu propia \n cuenta, te sacaremos entre todas", "Está bien, ya me voy..", font, 300, 45, 170, 260, 12, 300, 170, 50, 260, 220, 120, 45, 30);
    mostrarBotones(false, "SIGUIENTE", "", 12, 400, 240, 340, 290, 130, 90, 30);
  }
  if (pantalla==19) {
    image(img[16], width/2, height/2);
    mostrarDialogos("Recuerda un panal que vió en sus viajes \n de haragana donde se necesitaba una reina", "", font, 300, 320, 0, 0, 12, width/2, 0, 330, 0, 250, 0, 60, 0);
    mostrarBotones(true, "SE DIRIGE HACÍA ALLÍ", "DECIDE NO IR", 12, 400, 240, 270, 270, 130, 150, 40);
  }
  if (pantalla==20) {
    image(img[17], width/2, height/2);
    mostrarDialogos("Por miedo a ser rechazada nuevamente \n decide quedarse en un hueco de \n  un arbol no muy lejano ", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 235, 180, 65, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
  }
  if (pantalla==21) {
    image(img[18], width/2, height/2);
    mostrarDialogos("Al llegar la noche, muerta \n de frío toma la decision de ir", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 195, 0, 55, 0);
    mostrarBotones(false, "SIGUIENTE", "", 13, 400, 230, 260, 330, 130, 100, 40);
  }
  if (pantalla==22) {
    image(img[19], width/2, height/2);
    mostrarDialogos("SE BUSCA REINA", "", font, 390, 115, 320, 45, 12, 390, 320, 115, 50, 120, 0, 25, 0);
    mostrarBotones(false, "ENTRA", "", 13, 400, 230, 310, 330, 130, 100, 40);
  }
  if (pantalla==23) {
    image(img[15], width/2, height/2);
    mostrarDialogos("Tras una eleccion unanime se consagra \n  reina del nuevo panal y ahora \n sería la -REINA BIENVENIDA-.", "", font, 210, 275, 320, 45, 12, 210, 320, 285, 50, 220, 0, 70, 0);
    mostrarBotones(false, "SIGUIENTE", "", 12, 431, 230, 340, 330, 100, 100, 40);
  }
  if(pantalla==24){
    image(img[20], width/2, height/2);
    mostrarDialogos("Desde ese momento, todas las abejas \n se pusieron a trabajar, hasta ella misma.", "", font, 340, 250, 180, 260, 12, 340, 180, 255, 0, 260, 80, 50, 0);
    mostrarBotones(false, "FIN", "", 13, 350, 230, 330, 330, 130, 130, 40);
  }
  if(pantalla==25){
    mostrarCreditos("Tercer y ultimo final", "", fontCreditos, width/2, height/2, 230, 30, 15);
    mostrarBotones(false, "VOLVER AL \n INICIO", "", 13, width/2, 230, 330, 330, 200, 100, 40);
  }
}

void mousePressed() {
  //boton para volver al menu dentro de creditos
  if ((mouseX > 250 && mouseX < 350 && mouseY > 310 && mouseY < 349)&& creditos) {
    pantalla = 1;
    creditos = false;
    //boton para ir a creditos
  } else if ((mouseX > 180 && mouseX < 280 && mouseY > 310 && mouseY < 349)&& pantalla==1) {
    pantalla=-1;
    //boton de siguiente en el menu
  } else if ((mouseX > 300 && mouseX < 400 && mouseY > 310 && mouseY < 349)&& pantalla==1) {
    pantalla=2;
    //boton de siguiente 2 pantalla
  } else if ((mouseX > 390 && mouseX < 490 && mouseY > 220 && mouseY < 260)&& pantalla==2) {
    pantalla=3;
    //boton de siguiente 3 pantalla
  } else if ((mouseX > 390 && mouseX < 490 && mouseY > 220 && mouseY < 260)&& pantalla==3) {
    pantalla=4;
    //boton de siguiente 4 pantalla
  } else if ((mouseX > 390 && mouseX < 490 && mouseY > 220 && mouseY < 260) && pantalla==4) {
    pantalla=5;
    //botones "se la come"
  } else if ((mouseX > 380 && mouseX < 480 && mouseY > 320 && mouseY < 360) && pantalla==5) {
    Final = true;
    pantalla=6;
    //boton para volver al menu dentro del primer final
  } else if ((mouseX > 260 && mouseX < 340 && mouseY > 310 && mouseY < 349)&& pantalla==6 && Final) {
    Final = false;
    pantalla=1;
    //boton "no se la come" pantalla 6
  } else if ((mouseX > 180 && mouseX < 280 && mouseY > 311 && mouseY < 350) && pantalla==5) {
    pantalla=7;
    //boton "se rehusa"
  } else if ((mouseX > 180 && mouseX < 280 && mouseY > 311 && mouseY < 350) && pantalla==7) {
    pantalla=8;
    //boton "Acepta"
  } else if ((mouseX > 300 && mouseX < 400 && mouseY > 311 && mouseY < 350) && pantalla==7) {
    pantalla=9;
  } else if ((mouseX > 300 && mouseX < 400 && mouseY > 311 && mouseY < 350) && pantalla==8) {
    pantalla=9;
  } else if ((mouseX > 300 && mouseX < 400 && mouseY > 311 && mouseY < 350) && pantalla==9) {
    pantalla=10;
  } else if ((mouseX > 350 && mouseX < 450 && mouseY > 240 && mouseY < 280) && pantalla==10) {
    pantalla=11;
    //Boton "no la dejan pasar"
  } else if ((mouseX > 163 && mouseX < 297 && mouseY > 290 && mouseY < 310) && pantalla==11) {
    pantalla=12;
    //boton "la dejan pasar"
  } else if ((mouseX > 390 && mouseX < 490 && mouseY > 222 && mouseY < 260) && pantalla==12) {
    pantalla=13;
  } else if ((mouseX > 390 && mouseX < 490 && mouseY > 160 && mouseY < 200) && pantalla==13) {
    pantalla=14;
  } else if ((mouseX > 380 && mouseX < 480 && mouseY > 300 && mouseY < 340) && pantalla==14) {
    pantalla=15;
  } else if ((mouseX > 260 && mouseX < 340 && mouseY > 310 && mouseY < 349) && pantalla==15) {
    pantalla=1;
  } else if ((mouseX > 333 && mouseX < 467 && mouseY > 290 && mouseY < 310) && pantalla==11) {
    pantalla=16;
  } else if ((mouseX > 170 && mouseX < 307 && mouseY > 290 && mouseY < 310) && pantalla==16) {
    pantalla=17;
  } else if ((mouseX > 332 && mouseX < 467 && mouseY > 290 && mouseY < 310) && pantalla==16) {
    pantalla=18;
  } else if ((mouseX > 355 && mouseX < 445 && mouseY > 325 && mouseY < 355) && pantalla==18) {
    pantalla=17;
  } else if ((mouseX > 355 && mouseX < 445 && mouseY > 285 && mouseY < 315) && pantalla==17) {
    pantalla=19;
  } else if ((mouseX > 165 && mouseX < 315 && mouseY > 250 && mouseY < 290) && pantalla==19) {
    pantalla=20;
  } else if ((mouseX > 350 && mouseX < 450 && mouseY > 240 && mouseY < 280) && pantalla==20) {
    pantalla=21;
  } else if ((mouseX > 325 && mouseX < 475 && mouseY > 250 && mouseY < 290) && pantalla==19) {
    pantalla=22;
  } else if ((mouseX > 350 && mouseX < 450 && mouseY > 240 && mouseY < 280) && pantalla==21) {
    pantalla=22;
  } else if ((mouseX > 350 && mouseX < 450 && mouseY > 290 && mouseY < 330) && pantalla==22) {
    pantalla=23;
  }else if ((mouseX > 380 && mouseX < 480 && mouseY > 320 && mouseY < 360) && pantalla==23){
    pantalla=24;
  }else if ((mouseX > 285 && mouseX < 415 && mouseY > 310 && mouseY < 350) && pantalla==24){
    pantalla=25;
  }else if ((mouseX > 250 && mouseX < 350 && mouseY > 310 && mouseY < 350) && pantalla==25){
    pantalla=1;
  }
}
