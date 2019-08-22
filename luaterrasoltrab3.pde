// Sistema Solar

// Angulo de Rotação ao redor do sol e planetas
float theta = 0;

void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);

  // Translada o centro da janela para desenhar o sol .
  translate(width/2, height/2);
  fill(175, 100, 150);
  ellipse(0, 0, 64, 64);

  // A terra que rotaciona o sol 
  pushMatrix();
  rotate(theta);
  translate(100, 0);
  fill(255, 30, 155);
  ellipse(0, 0, 32, 32);

  // Lua #1 rotaciona ao redor da terra 
  // pushMatrix() é chamado para salvar o estado de transformaçao antes de desenhar a lua  
  // a lua rotaciona ao redor da terra ( que rotaciona ao redor do sol )
  pushMatrix(); 
  rotate(-theta*4);
  translate(36, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 12, 12);
  popMatrix();



  popMatrix();

  theta += 0.01;
}
