void dibujarPlano(int gradosx, int gradosy) {
  line(0, height/2, width, height/2+gradosy);
  line(width/2, 0, width/2+gradosx, height);
  int coordenadas = -20;
  int distancia = width/40;
  if(gradosx == 0 && gradosy == 0){
  for (int i = 0; i < width; i += distancia) {
    line(i, height/2, i, height/2.05);
    textSize(10);
    fill(0, 0, 0);
    text(coordenadas, i, height/2.04);
    coordenadas++;
  }
  coordenadas = -20;
  distancia = height/40;
  for (int i = 0; i < height; i += distancia) {
    line(width/2, i, width/2.05, i);
    textSize(10);
    if (coordenadas == 0) {
      coordenadas++;
      continue;
    }
    text(coordenadas, width/2.09, i);
    coordenadas++;
  }
  }
}

void setup() {
  size(1000, 1000);
  background(999, 999, 999);
  dibujarPlano(0, 0);
  
}

void draw() {
  menu prueb = new menu();
  try {
    int a = int(sqrt(prueb.canonica.anchoYlargo()[0]));
    int b = int(sqrt(prueb.canonica.anchoYlargo()[1]));
    float angulo = prueb.vectores.getAngulo();
    println(b);
    int distancia1 = width/40*2;
    int pivote1 = 0;
    for (int i = 0; i < b; i++) {
      pivote1 += distancia1;
    }
    int pivote2 = 0;
    int distancia2 = height/40*2;
    for (int i = 0; i < a; i++) {
      pivote2 += distancia2;
      println(pivote2);
    }
    int pivote3 = 0;
    int pivote4 = 0;
    for(int i = 0; i < angulo; i += 5){
      pivote3 += distancia1;
      pivote4 += distancia2;
    }
    fill(999, 999, 999);
    ellipse(width/2 + pivote3/2, height/2 + pivote4/2, pivote2, pivote1);
    dibujarPlano(pivote4, pivote3);
  }
  catch(Exception e) {
    exit();
  }
}
