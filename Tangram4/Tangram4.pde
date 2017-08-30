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
  if(barra ==0){
    background(54,39,31);
    textSize(130);
    fill(255, 255, 255);
    text("¿Quieres jugar?", 270, 550);
  }else{
    background(41,181,184);
    textSize(100);
    fill(0, 102, 153);
    text("Tangram", 530, 100); 
    textSize(30);
    text("T.Negro = 1, T.Amarillo = 2, T.Morado = 3, T.Verde = 4 T.Naranja = 5, Cuadrado = 6 y Trapecio = 7", 10, 950);
    strokeWeight(25);
    stroke(88,89,68);
    
    fill(54,39,31);
    rect(450,200,620,620);
    
    
    noStroke();
    
    
                                                       //Cuadrado
      r = 4;
      g = 53;
      b = 155;                                                  
    if(cuadrado){
      valuec = mouseX;
      valuec2 = mouseY; 
      vCx = valuec;
      vCy = valuec2;
      
    }
    if(cuadrado_2){
      vCx = movTecladox(vCx);
      vCy = movTecladoy(vCy);
      r = 255;
      g = 255;
      b = 255;
    }
    pushMatrix();
      translate(vCx,vCy);
      if(giroCUA%2 == 1){
        rotate(PI/4);  
      }
      fill(r,g,b);
      rect(0,0,210,210);
    popMatrix();
    
    
    
                                                     //Trinagulo negro
     r1 = 2;
     g1 = 2;
     b1 = 2;
    if(triangulo){
       valuet = mouseX;
       valuet2 = mouseY; 
       vT1x = valuet;
       vT1y = valuet2;
    }
    if(triangulo_2){
      vT1x = movTecladox(vT1x);
      vT1y = movTecladoy(vT1y);
      r1 = 255;
      g1 = 255;
      b1 = 255;
    }
    pushMatrix();    
    fill(r1,g1,b1);
    translate(vT1x, vT1y);
    rotate(radians(giro(giroTp%8)));
    triangle(0, 0, 210, 0, 0, -210);
    popMatrix();
    
    
                                                     //Triangulo amarillo
    r2 = 233;
    g2 = 239;
    b2 = 1;
    if(triangulo2){
      valorT = mouseX;
      valorT2 = mouseY; 
      vT2x = valorT;
      vT2y = valorT2;
    }
    if(triangulo2_2){
      vT2x = movTecladox(vT2x);
      vT2y = movTecladoy(vT2y);
      r2 = 255;
      g2 = 255;
      b2 = 255;
    }
    pushMatrix();    
    fill(r2,g2,b2);
    translate(vT2x, vT2y);
    rotate(radians(giro(giroTp1%8)));
    triangle(0, 0, 210, 0, 0, -210);
    popMatrix();
    
   
                                                      //Triangulo verde
    r3 = 0;
    g3 = 100;
    b3 = 0;
    if(triangulo3){
      t = mouseX;
      t2 = mouseY; 
      vT3x = t;
      vT3y = t2;
    }
    if(triangulo3_2){
      vT3x = movTecladox(vT3x);
      vT3y = movTecladoy(vT3y);
      r3 = 255;
      g3 = 255;
      b3 = 255;
    }
    pushMatrix();    
    fill(r3,g3,b3);
    translate(vT3x, vT3y);
    rotate(radians(giro(giroTp2%8)));
    triangle(0, 0, 420, 0, 0, -420);
    popMatrix();
    
    
                                                      //Triangulo naranja
    r4 = 248;
    g4 = 73;
    b4 = 22;
    if(triangulo4){
      t_1 = mouseX;
      t_2 = mouseY; 
      vT4x = t_1;
      vT4y = t_2;
    }
    if(triangulo4_2){
      vT4x = movTecladox(vT4x);
      vT4y = movTecladoy(vT4y);
      r4 = 255;
      g4 = 255;
      b4 = 255;
    }
    pushMatrix();    
    fill(r4,g4,b4);
    translate(vT4x, vT4y);
    rotate(radians(giro(giroTp3%8)));
    triangle(0, 0, 420, 0, 0, -420);
    popMatrix();
    
      
                                                       //Triangulo morado
    r5 = 89;
    g5 = 10;
    b5 = 86;
    if(triangulo5){
      tria = mouseX;
      tria2 = mouseY; 
      vT5x = tria;
      vT5y = tria2;
    }
    if(triangulo5_2){
      vT5x = movTecladox(vT5x);
      vT5y = movTecladoy(vT5y);
      r5 = 255;
      g5 = 255;
      b5 = 255;
    }
    pushMatrix();    
    fill(r5,g5,b5);
    translate(vT5x, vT5y);
    rotate(radians(giro(giroTp4%8)));
    triangle(0, 0, 300, 0, 0, -300);
    popMatrix();
    
    
                                                          //Trapecio
    r6 = 200;
    g6 = 0;
    b6 = 0;
    if(t_rapecio){
      trapecio = mouseX;
      trapecio2 = mouseY; 
      vTrax = trapecio;
      vTray = trapecio2;
    }
    if(t_rapecio_2){
      vTrax = movTecladox(vTrax);
      vTray = movTecladoy(vTray);
      r6 = 255;
      g6 = 255;
      b6 = 255;
    }                                                         
    pushMatrix();    
    fill(r6,g6,b6);
    translate(vTrax, vTray);
    rotate(radians(giro(giroTRA%8)));
    triangle(0, 0, 150, 150, - 150, 150);
    triangle(0, 0, 150, 150, 300, 0 );//trapecio
    popMatrix();
    

  }
  if (keyPressed) {
    switch (key) {
      case ' ':
        barra++;
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
  }
  println(espacios);
  println(traslapo);
  //println(get(mouseX,mouseY));
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