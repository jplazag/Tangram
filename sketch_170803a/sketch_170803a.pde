//Coordenadas
int valuec = 100, valuec2 = 100; //Cuadrado
int valuet , valuet2; //Triangulo negro
int valorT = 30, valorT2 = 600; //Triangulo amarillo
int trapecio = 700, trapecio2 = 700; //Trapecio
int t = 1000, t2 = 700; //Triangulo verde
int t_1 = 500, t_2 = 500; //Triangulo naranja
int tria = 1200, tria2 = 400; //Triangulo morado
int giroCUA = 0; //Giro del cuadrado
int giroTRA = 0, tr1 = 150 ,tr2 = 150 ,tr3 = 300 , tr4 = 0, tr5 = 150, tr6 = 150, tr7 = 150, tr8 = 150; //Giro del Trapecio
int giroTp = 0, w = 210, x = 0, y = 0, z = -210;//Giro del Triangulo negro
int giroTp1 = 0, w1 = 210, x1 = 0, y1 = 0, z1 = -210;//Giro del Triangulo amarillo
int giroTp2 = 0, w2 = 210, x2 = 0, y2 = 0, z2 = -210;//Giro del Triangulo verde
int giroTp3 = 0, w3 = 210, x3 = 0, y3 = 0, z3 = -210;//Giro del Triangulo naranja
int giroTp4 = 0, w4 = 210, x4 = 0, y4 = 0, z4 = -210;//Giro del Triangulo morado
boolean cuadrado, triangulo, triangulo2, t_rapecio, triangulo3, triangulo4, triangulo5; //Variables para comprobar si se selecciono la figura
boolean verdad;
int barra = 0;

boolean comprobar_t(int x, int y, int giro, double tamano, double tamano2){
  switch(giro%8){
    case 0:
    if((mousePressed == true) && (mouseY >= -x + y - (210 + tamano) + mouseX) && (mouseY <= y) && (mouseX >= x)){
      verdad = true;
    }
    break;
    case 1:
    if((mousePressed == true) && (mouseY <= -x + y + mouseX) && (mouseY >= x + y - mouseX) && (mouseX <= x + (150 + tamano2))){
      verdad = true;
    }
    break;
    case 2:
    if((mousePressed == true) && (mouseY <= x + y + (210 + tamano) - mouseX) && (mouseY >= y) && (mouseX >= x)){
      verdad = true;
    }
    break;
    case 3:
    if((mousePressed == true) && (mouseY >= -x + y + mouseX) && (mouseY >= x + y - mouseX) && (mouseY <= y + (150 + tamano2))){
      verdad = true;
    }
    break;
    case 4:
    if((mousePressed == true) && (mouseY <= -x + y + (210 + tamano) + mouseX) && (mouseY >= y) && (mouseX <= x)){
      verdad = true;
    }
    break;
    case 5:
    if((mousePressed == true) && (mouseY >= -x + y + mouseX) && (mouseY <= x + y - mouseX) && (mouseX >= x - (150 + tamano2))){
      verdad = true;
    }
    break;
    case 6:
    if((mousePressed == true) && (mouseY >= x + y - (210 + tamano) - mouseX) && (mouseY <= y) && (mouseX <= x)){
      verdad = true;
    }
    break;
    case 7:
    if((mousePressed == true) && (mouseY <= -x + y + mouseX) && (mouseY <= x + y - mouseX) && (mouseY >= y - (150 + tamano2))){
      verdad = true;
    }
    break;
  }
  return verdad;
}
boolean comprobar_trapecio(int x, int y, int giro){
  switch(giro%8){
    case 0:
    if((mousePressed == true) && (mouseY <= y + 150) && (mouseY >= y) && (mouseX >= -mouseY + x + y) && (mouseX <= -mouseY + x + y + 300)){
      verdad = true;
    }
    break;
    case 1:
    if((mousePressed == true) && (mouseX <= mouseY - y + x) && (mouseX >= mouseY + x - y - 210) && (mouseY >= y) && (mouseY <=  y + 210)){
      verdad = true;
    }
    break;
    case 2:
    if((mousePressed == true) && (mouseX >= x - 150) && (mouseX <= x) && (mouseY >= mouseX + y - x) && (mouseY <= mouseX - x + y + 300)){
      verdad = true;
    }  
    break;
    case 3:
    if((mousePressed == true) && (mouseY >= -mouseX + y + x) && (mouseY <= -mouseX + x + y + 210) && (mouseX >= x) && (mouseX <=  x + 210)){
      verdad = true;
    }
    break;
    case 4:
    if((mousePressed == true) && (mouseY <= y + 150) && (mouseY >= y) && (mouseX <= mouseY + x - y) && (mouseX >= mouseY + x - y - 300)){
      verdad = true;
    }
    break;
    case 5:
    if((mousePressed == true) && (mouseY >= mouseX + y - x) && (mouseY <= mouseX - x + y + 210) && (mouseX <= x) && (mouseX >=  x - 210)){
      verdad = true;
    }
    break;
    case 6:
    if((mousePressed == true) && (mouseX >= x - 150) && (mouseX <= x) && (mouseY <= -mouseX + y + x) && (mouseY >= -mouseX + x + y - 300)){
      verdad = true;
    } 
    break;
    case 7:
    if((mousePressed == true) && (mouseX >= -mouseY + y + x) && (mouseX <= -mouseY + x + y + 210) && (mouseY >= y) && (mouseY <= y + 210)){
      verdad = true;
    }
    break;
  }
  return verdad;
}
boolean comprobar_cuadrado(int x, int y, int giro){
  switch(giro%2){
    case 0:
    if(((mousePressed == true) && (mouseY > y) && (mouseY < y + 210)) && ((mouseX > x) && (mouseX < x + 210))){
     verdad = true;
    }
    break;
    case 1:
    if((mousePressed == true) && (mouseY <= -x + mouseX + y) && (mouseY >= x - mouseX + y) && (mouseY >= mouseX + y - (x + 300)) && (mouseY <= -mouseX + x + y + 300)){
      verdad = true;
    }
     break;
    }  
    return verdad;
  }
  
  boolean comprobar_ubicacion(int x, int y, int giro, double tamano, double tamano2){
  switch(giro%8){
    case 0:
    if((x >= 470) && (x + 210 <= 1070) && (y - 210 >= 220) && (y <= 820)){
      verdad = true;
    }
    break;
    case 1:
    if((x >= 470) && (x + 150 <= 1070) && (y - 150 >= 220) && (y - 150 <= 820)){
      verdad = true;
    }
    break;
    case 2:
    if((x >= 470) && (x + 210 <= 1070) && (y >= 220) && (y + 210 <= 820)){
      verdad = true;
    }
    break;
    case 3:
    if((x - 150 >= 470) && (x + 150 <= 1070) && (y >= 220) && (y + 150 <= 820)){
      verdad = true;
    }
    break;
    case 4:
    if((x - 210 >= 470) && (x <= 1070) && (y >= 220) && (y + 210 <= 820)){
      verdad = true;
    }
    break;
    case 5:
    if((x >= 470) && (x + 150 <= 1070) && (y - 150 >= 220) && (y - 150 <= 820)){
      verdad = true;
    }
    break;
    case 6:
    if((x >= 470) && (x + 150 <= 1070) && (y - 150 >= 220) && (y - 150 <= 820)){
      verdad = true;
    }
    break;
    case 7:
    if((x >= 470) && (x + 150 <= 1070) && (y - 150 >= 220) && (y - 150 <= 820)){
      verdad = true;
    }
    break;
  }
  return verdad;
}

int [] giro(int giro){
  int a = 0, b = 0, c = 0, d = 0;
  
  switch(giro%8){
    case 0:
    a = 210;
    b = 0;
    c = 0;
    d = -210;    
    break;
    case 1:
    a = 150;
    b = -150;
    c = 150;
    d = 150; 
    break;
    case 2:
    a = 210;
    b = 0;
    c = 0;
    d = 210;
    break;
    case 3:
    a = -150;
    b = 150;
    c = 150;
    d = 150; 
    break;
    case 4:
    a = -210;
    b = 0;
    c = 0;
    d = 210;
    break;
    case 5:
    a = -150;
    b = -150;
    c = -150;
    d = 150; 
    break;
    case 6:
    a = -210;
    b = 0;
    c = 0;
    d = -210;
    break;
    case 7:
    a = -150;
    b = -150;
    c = 150;
    d = -150; 
    break;
  }
  int r[] = {a, b, c, d};
  return r;
}

void giro_trapecio(int giro){
  switch(giro%8){
  case 0:
    tr1 = 150;
    tr2 = 150;
    tr3 = 300;
    tr4 = 0;
    tr5 = tr1;
    tr6 = tr2;
    tr7 = 150;
    tr8 = 150;
    break;
  case 1:
    tr1 = -210;
    tr2 = 0;
    tr3 = 210;
    tr4 = 210; 
    tr5 = 0;
    tr6 = 210;
    tr7 = 0;
    tr8 = 210;
    break;
  case 2:
    tr1 = -150;
    tr2 = -150;
    tr3 = 0;
    tr4 = 300; 
    tr5 = tr1;
    tr6 = 150;
    tr7 = 150;
    tr8 = 150;
    break;
   case 3:
    tr1 = 0;
    tr2 = 210;
    tr3 = 210;
    tr4 = -210; 
    tr5 = 210;
    tr6 = 0;
    tr7 = -210;
    tr8 = 0;
    break;
    case 4:
    tr1 = 150;
    tr2 = 150;
    tr3 = -300;
    tr4 = 0;
    tr5 = -tr1;
    tr6 = 150;
    tr7 = 150;
    tr8 = 150;
    break;
  case 5:
    tr1 = 0;
    tr2 = 210;
    tr3 = -210;
    tr4 = -210; 
    tr5 = -210;
    tr6 = 0;
    tr7 = 210;
    tr8 = 0;
    break;
  case 6:
    tr1 = -150;
    tr2 = -150;
    tr3 = 0;
    tr4 = -300; 
    tr5 = tr1;
    tr6 = -150;
    tr7 = 150;
    tr8 = 150;
    break;
   case 7:
    tr1 = 210;
    tr2 = 0;
    tr3 = -210;
    tr4 = 210; 
    tr5 = 0;
    tr6 = 210;
    tr7 = 0;
    tr8 = 210;
    break;
  }
}

void setup(){
  size(1500,1000);
  valuet = 50;
  valuet2 = 900;  
}

void draw(){  
  if(barra ==0){
    background(0);
    textSize(130);
    fill(255, 255, 255);
    text("¿Quieres jugar?", 270, 550);
  }else{
  background(41,181,184);
  textSize(100);
  fill(0, 102, 153);
  text("Tangram", 530, 100); 
  textSize(30);
  text("T.Negro = 1, T.Amarillo = 2, Trapecio = 3, T.Verde = 4 T.Naranja = 5, T.Morado = 6 y Cuadrado = 7", 10, 950);
  strokeWeight(20);
  stroke(88,89,68);
  fill(129,131,101);
  rect(450,200,620,620);
  fill(4,53,155);
  noStroke();
  switch(giroCUA%2){
    case 0:
      rect(valuec,valuec2,210,210);
      break;
    case 1:
      triangle(valuec, valuec2, valuec + 150, valuec2 - 150, valuec + 150, valuec2 + 150);
      triangle(valuec + 150, valuec2 - 150, valuec + 150, valuec2 + 150, valuec + 300, valuec2);
      break;
  }
  fill(0);
  triangle(valuet, valuet2, valuet + w, valuet2 + x, valuet + y, valuet2 + z);
  fill(233,239,1);
  triangle(valorT, valorT2, valorT + w1, valorT2 +x1, valorT + y1, valorT2 + z1);
  fill(200,0,0);
  triangle(trapecio, trapecio2, trapecio + tr1, trapecio2 + tr2, trapecio - tr7,trapecio2 + tr8);
  triangle(trapecio, trapecio2, trapecio + tr5, trapecio2 + tr6, trapecio + tr3, trapecio2 + tr4);
  fill(0,100,0);
  triangle(t, t2, t + (w2*2), t2 + (2*x2), t + (2*y2), t2 + (2*z2));
  fill(248,73,22);
  triangle(t_1, t_2, t_1 + (w3*2), t_2 + (2*x3), t_1 + (2*y3), t_2 + (2*z3));
  fill(89,10,86);
  triangle(tria, tria2, tria + ((w4*10)/7), tria2 + ((10*x4)/7), tria + ((10*y4)/7), tria2 + ((10*z4)/7));
  }
  if (keyPressed) {
    switch (key) {
      case ' ':
        barra++;
        break;
      case '1':
        giroTp++;
        int arr [] = giro(giroTp);
        w = arr [0];
        x = arr [1];
        y = arr [2];
        z = arr [3];
        key = 0;
        break;
      case '2':
        giroTp1++;
        int arr1 [] = giro(giroTp1);
        w1 = arr1 [0];
        x1 = arr1 [1];
        y1 = arr1 [2];
        z1 = arr1 [3];
        key = 0;
        break;
      case '3':        
        giroTRA++;
        giro_trapecio(giroTRA);
        key = 0;
        break;
      case '4':
        giroTp2++;
        int arr2 [] = giro(giroTp2);
        w2 = arr2 [0];
        x2 = arr2 [1];
        y2 = arr2 [2];
        z2 = arr2 [3];
        key = 0;
        break;
      case '5':
        giroTp3++;
        int arr3 [] = giro(giroTp3);
        w3 = arr3 [0];
        x3 = arr3 [1];
        y3 = arr3 [2];
        z3 = arr3 [3];
        key = 0;
        break;
      case '6':
        giroTp4++;
        int arr4 [] = giro(giroTp4);
        w4 = arr4 [0];
        x4 = arr4 [1];
        y4 = arr4 [2];
        z4 = arr4 [3];
        key = 0;
        break;
      case '7':
        giroCUA++;
        key = 0;
        break;
    }
  } 
  //if(
}
void mouseDragged(){
  if(verdad != true){
    cuadrado = comprobar_cuadrado(valuec, valuec2, giroCUA);
    triangulo = comprobar_t(valuet, valuet2, giroTp,0,0);
    triangulo2 = comprobar_t(valorT, valorT2, giroTp1,0,0);
    t_rapecio = comprobar_trapecio(trapecio,trapecio2,giroTRA);
    triangulo3 = comprobar_t(t, t2, giroTp2,210,150);
    triangulo4 = comprobar_t(t_1, t_2, giroTp3,210,150);
    triangulo5 = comprobar_t(tria, tria2, giroTp4,90,60);
  }
  if(cuadrado == true){
   valuec2 = mouseY;
   valuec = mouseX;  
  }else if(triangulo == true){
   valuet2 = mouseY;
   valuet = mouseX;  
  }else if(triangulo2 == true){
   valorT2 = mouseY;
   valorT = mouseX;  
  }else if(t_rapecio == true){
   trapecio2 = mouseY;
   trapecio = mouseX;  
  }else if(triangulo3 == true){
    t = mouseX;
    t2 = mouseY;
  }else if(triangulo4 == true){
    t_1 = mouseX;
    t_2 = mouseY;
  }
  else if(triangulo5 == true){
    tria = mouseX;
    tria2 = mouseY;
  }
}
void mouseReleased() {  
  verdad = false;
}