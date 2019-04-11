class Dir_y_Vel {
  float posX;
  float posY;
  float prevPosX;
  float prevPosY;
  float miDireccionX;
  float miDireccionY;


  float vel;

  Dir_y_Vel () {
    this.posX=0;
    this.posY=0;
  }

  void calcularTodo (float mi_X, float mi_Y) {
    prevPosX=posX;
    prevPosY=posY;
    posX=mi_X;
    posY=mi_Y;
    
    vel = dist (posX, posY, prevPosX, prevPosY);
   
    miDireccionX = posX-prevPosX;
    miDireccionY = posY-prevPosY;
  }



  float velocidad() {
    return vel;
  }

  float direccionX () {
    return miDireccionX;
  }

  float direccionY () {
    return miDireccionY;
  }


  void mostrarData() { 
    textSize(32);
    text ("Velocidad: "+vel, 50, 50);
    text ("DireccionX: "+miDireccionX, 50, 100);
    text ("direccionY: "+miDireccionY, 50, 150);
  }  

  ///////////// FIN DE LA CLASE  ///////
}
