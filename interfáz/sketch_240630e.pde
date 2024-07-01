class PlanoCartesiano {
  int ancho, alto;

  // Constructor
  PlanoCartesiano(int ancho, int alto) {
    this.ancho = ancho;
    this.alto = alto;
  }

  // Método para dibujar el plano cartesiano
  void dibujar() {
    stroke(0);  // Color de línea negro
    // Dibujar eje X
    line(0, alto / 2, ancho, alto / 2);
    // Dibujar eje Y
    line(ancho / 2, 0, ancho / 2, alto);

    // Dibujar marcas en los ejes
    for (int i = 0; i < ancho; i += 50) {
      // Marcas en el eje X
      line(i, alto / 2 - 5, i, alto / 2 + 5);
      // Marcas en el eje Y
      line(ancho / 2 - 5, i, ancho / 2 + 5, i);
    }

    // Añadir etiquetas a los ejes
    fill(0);  // Color de relleno negro
    textAlign(CENTER, CENTER);
    for (int i = 0; i < ancho; i += 50) {
      text(i - ancho / 2, i, alto / 2 + 20); // Etiquetas eje X
      text(alto / 2 - i, ancho / 2 + 20, i); // Etiquetas eje Y
    }
  }

  // Método para dibujar un punto en el plano cartesiano
  void dibujarPunto(float x, float y) {
    // Convertir coordenadas del plano cartesiano a coordenadas de la ventana
    float ventanaX = ancho / 2 + x;
    float ventanaY = alto / 2 - y;

    // Dibujar el punto
    fill(255, 0, 0);  // Color de relleno rojo
    ellipse(ventanaX, ventanaY, 10, 10); // Dibujar un círculo en la posición (ventanaX, ventanaY)
  }
}
PlanoCartesiano plano;
public void setup() {
  size(800, 800);  // Tamaño de la ventana
  background(255); // Fondo blanco

  // Crear una instancia de la clase PlanoCartesiano
  plano = new PlanoCartesiano(width, height);
  
  // Dibujar el plano cartesiano
  plano.dibujar();
  
  // Dibujar un punto de ejemplo en el plano cartesiano
  plano.dibujarPunto(100, 100);
}
