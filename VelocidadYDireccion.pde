Dir_y_Vel miVelocidadYDireccion;

void setup () {
  size (800, 600);
  miVelocidadYDireccion = new Dir_y_Vel();
}

void draw () {
  background (0);

  miVelocidadYDireccion.calcularTodo (mouseX, mouseY);
  miVelocidadYDireccion.mostrarData ();


}
