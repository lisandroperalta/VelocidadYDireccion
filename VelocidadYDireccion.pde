float posX=0;
float posY=0;


void setup () {
  size (800, 600);
}

void draw () {
  posX=mouseX;
  posY=mouseY;
  
  background (0);

  text (velocidad, mouseX, mouseY);
}
