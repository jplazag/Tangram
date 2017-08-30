//Coordenadas
int valuec, valuec2, vCx, vCy, tecC1 = 0, tecC2 = 0; //Cuadrado
int valuet , valuet2, vT1x = 50, vT1y = 900; //Triangulo negro
int valorT, valorT2, vT2x = 30, vT2y = 600; //Triangulo amarillo
int trapecio, trapecio2,vTrax = 700, vTray = 700; //Trapecio
int t, t2, vT3y = 700, vT3x = 1000; //Triangulo verde
int t_1, t_2, vT4x = 500, vT4y = 500; //Triangulo naranja
int tria, tria2, vT5x = 1200, vT5y = 400; //Triangulo morado
int giroCUA = 0; //Giro del cuadrado
int giroTRA = 0; //Giro del Trapecio
int giroTp;//Giro del Triangulo negro
int giroTp1;//Giro del Triangulo amarillo
int giroTp2;//Giro del Triangulo verde
int giroTp3;//Giro del Triangulo naranja
int giroTp4; //Giro del Triangulo morado
int seleccion;
int r, g, b, r1, g1, b1, r2, g2, b2, r3, g3, b3, r4, g4, b4, r5, g5, b5, r6, g6, b6;  //Colores
boolean cuadrado, triangulo, triangulo2, t_rapecio, triangulo3, triangulo4, triangulo5;
boolean cuadrado_2, triangulo_2, triangulo2_2, t_rapecio_2, triangulo3_2, triangulo4_2, triangulo5_2; //Variables para comprobar si se selecciono la figura
boolean verdad, v1, v2, v3 ,v4, v5, v6, ubicacion;
int barra = 0;
int espacios;
  
//int cooCu, cooCu2;
boolean traslapo = false;


void setup(){
  size(1500,1000);  
}

void draw(){    
  switch(barra%3){
    case 0:
    background(54,39,31);
    textSize(130);
    fill(255, 255, 255);
    text("¿Quieres jugar?", 270, 550);
      break;
    case 1:
      movimientos();
      break;
  }
  
  if (keyPressed) {
    switch (key) {
      case 'z':
        barra += 1;
        break;
      case '1':
        giroTp++;
        key = 0;
        break;
      case '2':
        giroTp1++;
        key = 0;
        break;
      case '7':        
        giroTRA++;
        key = 0;
        break;
      case '4':
        giroTp2++;
        key = 0;
        break;
      case '5':
        giroTp3++;
        key = 0;
        break;
      case '3':
        giroTp4++;
        key = 0;
        break;
      case '6':
        giroCUA++;
        key = 0;
        break;
      case '\n':
        seleccion++;
        key = 0;
        break;
    }

  }
  switch(seleccion%8){
    case 1:
      cuadrado_2 = true;
      break;      
    case 2:
      cuadrado_2 = false;
      triangulo_2 = true;
      break;      
    case 3:
      triangulo_2 = false;
      triangulo2_2 = true;
      break;
    case 4:
      triangulo2_2 = false;
      triangulo3_2 = true;
      break;
    case 5:
      triangulo3_2 = false;
      triangulo4_2 = true;
      break;
    case 6:
      triangulo4_2 = false;
      triangulo5_2 = true;
      break;
    case 7:
      triangulo5_2 = false;
      t_rapecio_2 = true;
      break;
    case 0:
      t_rapecio_2 = false;
      break;
  }movimientos();
  println(espacios);
  println(traslapo);
  //println(get(mouseX,mouseY));
  println(barra);
}

void mouseDragged(){
  if((verdad == false)&&(v1 == false)&&(v2 == false)&&(v3 == false)&&(v4 == false)&&(v5 == false)&&(v6 == false)){
    cuadrado = comprobar_cuadrado();
    triangulo = comprobar_t1();
    triangulo2 = comprobar_t2();
    triangulo3 = comprobar_t3();
    triangulo4 = comprobar_t4();
    triangulo5 = comprobar_t5();
    t_rapecio = trapecio();    
  }
}

void mouseReleased() {
   verdad = false; 
   cuadrado = false;
   triangulo = false;
   triangulo2 = false;
   triangulo3 = false;
   triangulo4 = false;
   triangulo5 = false;
   t_rapecio = false; 
   v1 = false;
   v2 = false;
   v3 = false;
   v4 = false;
   v5 = false;
   v6 = false;
  
    loadPixels();
    espacios = 0;
  for(int x = 0; x < (width*height); x++){
    if(pixels[x] == -13228257){
      espacios ++;
    }
  }
  if(espacios < 800){
    traslapo = true;
  }
  updatePixels();
  
 

}