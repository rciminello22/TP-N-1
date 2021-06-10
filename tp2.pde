//TP2 - Renzo Ciminello (88242/4) - Se reinicia con la tecla ENTER

float Alpha, r, g, b, d;
PFont font;
PImage fondo, logoo, espada; 
int py, py2;
  void setup(){
  noCursor();
  size(400,400);
  noStroke();
  imageMode(CENTER);
  fondo = loadImage ("fondo.jpeg");
  logoo = loadImage ("logoo.png");
  espada = loadImage("espada.png");
  font = loadFont("Anton-Regular-40.vlw"); 
  textFont(font);
  py = 200;
  }
  void draw(){
    
  println(frameCount);
  tint(255);
  image (fondo,width/2,height/2,width,height);
  fill(0, 15);
  rect(0,0,width,height);
  r = random(216, 200);
  g = random(205, 100);
  b = random(205, 100);
  
  fill(r,g,b,150);
  d = random(6);
  ellipse(random(width),random(height),d,d);
  
    Alpha = map(py, 0, 255, 0, 255 );
  tint(255, Alpha); 
  image(logoo,width/2,height/2,py,py);
  
  
  if ((py <= 0) || (py>=255)) { 
  if (frameCount > 200 && frameCount < 440) {
  float azul = map (frameCount,200, 440, 247,15);
  float rojo = map (frameCount, 200, 440, 125, 15);
  float verde = map (frameCount, 200, 440, 173,15);
  fill(rojo,verde,azul);
  textAlign(CENTER);
  textSize(25);
  textLeading(30);
  text("Direct by \n J.J ABRAMS", 200, int(random(200.9,202.9)));
    }
  }
  
    if (frameCount > 440 && frameCount < 800) {
  float azul = map (frameCount,440, 800, 247,15);
  float rojo = map (frameCount, 440, 800, 125, 15);
  float verde = map (frameCount, 440, 800, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(22);
    textLeading(30);
    text("Written by \n LAUREN KASDAN and J.J ABRAMS \n Originals characters created by \n GEORGE LUCAS", 200, int(random(185.9,186.9)));
      }
     
     if (frameCount > 800 && frameCount < 1040) {
  float azul = map (frameCount,800, 1040, 247,15);
  float rojo = map (frameCount, 800, 1040, 125, 15);
  float verde = map (frameCount, 800, 1040, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Director of Photography \n DAN MINDEL", 200, int(random(185.9,187.9)));
      }
  
    if (frameCount > 1040 && frameCount < 1280) {
  float azul = map (frameCount,1040, 1280, 247,15);
  float rojo = map (frameCount, 1040, 1280, 125, 15);
  float verde = map (frameCount, 1040, 1280, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Production Design \n RICK CARTER \n and \n DARREN GILFORD", 200, int(random(170.9,171.9)));
    }
  
      if (frameCount > 1280 && frameCount < 1520) {
  float azul = map (frameCount,1280, 1520, 247,15);
  float rojo = map (frameCount, 1280, 1520, 125, 15);
  float verde = map (frameCount, 1280, 1520, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Music by \n JOHN WILLIAMS", 200, int(random(185.9,186.9)));
    }
    
    if (frameCount > 1520 && frameCount < 1760) {
  float azul = map (frameCount,1520, 1760, 247,15);
  float rojo = map (frameCount, 1520, 1760, 125, 15);
  float verde = map (frameCount, 1520, 1760, 173,15);
    fill(rojo,verde,azul);
    textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Starring by \n JOHN BOYEGA  DAISY RIDLEY", 200, int(random(185.9,186.9)));
    textSize(25);
    textLeading(30);
     text("OSCAR ISAAC", 200, int(random(240.9,241.9)));
    }
    
    if (frameCount > 1760 && frameCount < 2000) {
  float azul = map (frameCount,1760, 2000, 247,15);
  float rojo = map (frameCount, 1760, 2000, 125, 15);
  float verde = map (frameCount, 1760, 2000, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("and \n ADAM DRIVER \n as Kylo Ren", 200, int(random(185.9,186.9)));
    }
    
    if (frameCount > 2000 && frameCount < 2240) {
  float azul = map (frameCount,2000, 2240, 247,15);
  float rojo = map (frameCount, 2000, 2240, 125, 15);
  float verde = map (frameCount, 2000, 2240, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(23);
    textLeading(30);
    text("Co-Starring", 200, int(random(185.9,186.9)));
    textSize(23);
    textLeading(30);
    text(" HARRISON FORD      CARRIE FISHER", 200, int(random(230.9,231.9)));
    textSize(20);
    text("as Han Solo       as Leia", 189, int(random(260.9,261.9)));
    }
    
    if (frameCount > 2240 && frameCount < 2480) {
  float azul = map (frameCount,2240, 2480, 247,15);
  float rojo = map (frameCount, 2240, 2480, 125,15);
  float verde = map (frameCount, 2240, 2480, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("with \n MARK HAMILL \n as Luke Skywalker", 200, int(random(185.9,186.9)));
    }
    
    if (frameCount > 2480 && frameCount < 2720) {
  float azul = map (frameCount,2480, 2720, 247,15);
  float rojo = map (frameCount, 2480, 2720, 125, 15);
  float verde = map (frameCount, 2480, 2720, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("and \n ANDY SERKIS \n as Supreme Leader Snoke", 200, int(random(185.9,186.9)));
    }
    
    if (frameCount > 2720 && frameCount < 2960) {
  float azul = map (frameCount,2720, 2960, 247,15);
  float rojo = map (frameCount, 2720, 2960, 125, 15);
  float verde = map (frameCount, 2720, 2960, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Visual Effects Supervisor \n ROGER GUYETT ", 200, int(random(200.9,201.9)));
    }
    
    if (frameCount > 2960 && frameCount < 3200) {
  float azul = map (frameCount,2960, 3200, 247,15);
  float rojo = map (frameCount, 2960, 3200, 125, 15);
  float verde = map (frameCount, 2960, 3200, 173,15);
    fill(rojo,verde,azul);
     textAlign(CENTER);
    textSize(25);
    textLeading(30);
    text("Stunt Cordinator \n ROB INCH ", 200, int(random(200.9,201.9)));
    }
    
    py=py-1;
    
    tint(255);
    image (espada, mouseX, mouseY, 40,40);
  
   }

  void keyPressed() {
  if (keyCode==ENTER){
  py = 200;
  frameCount = 0;
    }
  }
