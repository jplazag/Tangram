void movimientos(){
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