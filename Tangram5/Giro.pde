int giro(int giro){
  int angulo = 0;
  switch(giro){
      case 0:
        angulo = 0;
          break;
      case 1:
        angulo = 45;
        break;
      case 2:
        angulo = 90;
        break;
      case 3:
        angulo = 135;
        break;
      case 4:
        angulo = 180;
        break;
      case 5:
        angulo = 225;
        break;
      case 6:
        angulo = 270;
        break;
      case 7:
        angulo = 315;
        break;
    }
  return angulo;
}