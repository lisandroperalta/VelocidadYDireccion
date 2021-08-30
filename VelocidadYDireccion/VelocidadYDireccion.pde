//Para usarlo primero debemos declarar un objeto Dir_y_Vel. Será uno por cada puntero que querramos seguir
Dir_y_Vel miVelocidadYDireccion; 

void setup () {
  size (800, 600);
  // Inicializo el objeto, no necesito pasarle parametros.
  miVelocidadYDireccion = new Dir_y_Vel();
}

void draw () {
  background (0);

  //Lo primero que deberia hacer es pasarle los parametros x e y que quiero calcular, en este caso el mouse
  miVelocidadYDireccion.calcularTodo (mouseX, mouseY);



  //Para usarlo, simplemente se le pregunta al objet por alguno de los valores. En la medida que los necesitemos

  //miVelocidadYDireccion.velocidad();
  //miVelocidadYDireccion.direccionX();
  //miVelocidadYDireccion.direccionY();
  //miVelocidadYDireccion.direccionPolar();

  //Por ejemplo:
  pushStyle();

  float hue = miVelocidadYDireccion.direccionPolar();
  float satYBright=miVelocidadYDireccion.velocidad()*4;

  colorMode (HSB);
  color miColor = color (hue, satYBright, satYBright);
  fill (miColor);
  
  rect(0, 0, width, height);

  popStyle();


  //Esta es una funcion solo para ver en pantalla si esta funcionando todo ok
  miVelocidadYDireccion.mostrarData ();
}
