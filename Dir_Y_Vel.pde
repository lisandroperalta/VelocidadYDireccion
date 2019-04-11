class Dir_y_Vel {
  float posX;
  float posY;
  float prevPosX;
  float prevPosY;
  float velocidad;

  Dir_y_Vel () {

    this.posX=0;
    this.posY=0;
  }

  void calcular(float mi_X, float mi_Y) {
    prevPosX=posX;
    prevPosY=posY;
    posX=mi_X;
    posY=mi_Y;

    velocidad = dist (posX, posY, prevPosX, prevPosY);
  }
  void mostrarData() { 
    textSize(32);
    text ("Velocidad: "+velocidad, 50, 50);
  }


  ///////////// FIN DE LA CLASE
}
