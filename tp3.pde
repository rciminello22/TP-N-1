//>>iNPIRACIÓN DE LA ILUSIÓN TOMADA DEL SIGUIENTE SITIO WEB>>: "https://www.cibermitanios.com.ar/2015/05/ilusiones-opticas-interactivas.html"

//TP2 - Renzo Ciminello (88242/4)
//Link al video explicativo: ""

PFont font, font2;
int cant = 15;
int tam;
int direc = 1;
int mov = 0;
int mov2 = 0;
boolean seMueve;
float N = color(0); //color negro
float Alpha;
void setup() {
  size(600, 400); 
  tam = width/cant;
  font2 = createFont("Monofett-Regular.ttf", 200);
  font = createFont("Schoolbell-Regular.ttf", 200);
  noStroke();
  seMueve=false;
  textAlign(CENTER);
  ellipseMode(RADIUS);
  Alpha=255;
}

void draw() {
  println(frameCount);
  background(0);
  for (int i=0; i<cant; i++) {
    fill(107, 191, 234);
    rect(tam*i, 0, 20, height);
  }

  fill(255,40,8);
  ellipse(300, 400, 300, 130);


  //corredores
  fill(107, 191, 234);
  rect(mov, 100, 80, 40);
  fill(0);
  rect(mov2, 200, 80, 40);


  //TERMINAR boton de reinicio
  if (seMueve==true) {
    textFont(font2);
    fill((random(100, 255)), 220, 170);
    textSize(25);
    text("Reiniciar", 300, 300);
  }

  if (seMueve==true) {
    textFont(font2);
    fill((random(100, 255)), 220, 170);
    textSize(25);
    text("Detener", 300, 380);

    if (seMueve==true) {
      textFont(font2);
      fill((random(100, 255)), 220, 170);
      textSize(25);
      text("Unir", 300, 340);
    }
  }

  textFont(font);
  fill(255, Alpha);
  textSize(25);
  text("Apretar ENTER para reproducir", int(random(300.9, 302.9)), int(random(350.9, 352.9)));
  if (keyPressed==true) {
    Alpha = 0;
  }


  //movimiento
  if (seMueve==true) {
    mov=mov+direc;
    mov2=mov2+direc;

    //rebote
    if (mov >= 520 && mov2 >=520) {
      direc = direc*-1;
    } else if (mov==-1 && mov2==-1) {
      direc = direc*-1;
    }
  }
}

void keyPressed() {
  if (keyCode==ENTER) {
    seMueve=true;
  }
}
