int movTecladox(int x){
  if (keyPressed) {
    switch (key) {
      case 'a':        
        x--;
        key = 0;
        break;
      case 'd':
        x++;
        key = 0;
        break;
    }
   }
   return x;
}

int movTecladoy(int y){
 if (keyPressed) {
    switch (key) {
      case 'w':
        y--;
        key = 0;
        break;
      case 's':
        y++;
        key = 0;
        break;
    }
 }
 return y;
}