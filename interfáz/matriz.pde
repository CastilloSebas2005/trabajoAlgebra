public class matriz {
  private float matrizCuadrica[][] = new float[2][2];
  //este número siempre se va a repetir ya que la matriz cúadrica es una matriz simétrica, corresponde a a01 y a10
  public matriz(float x, float y, float xy, float const_) {
    matrizCuadrica[0][0] = x;
    matrizCuadrica[0][1] = matrizCuadrica[1][0] = xy/2;
    matrizCuadrica[1][1] = y;
  }
  public void imprimirMatriz() {
    for (int i = 0; i < 2; i++) {
      System.out.println(" ");
      for (int j = 0; j < 2; j++) {
        if(j == 0){
         System.out.print("["); 
        }
        System.out.print(matrizCuadrica[i][j] + " ");
        if(j == 1){
          System.out.print("]");
        }
      }
    }
  }
     public String generarPolinomio() {
        float a = matrizCuadrica[0][0];
        
        float b = matrizCuadrica[1][1];
        
        float c = matrizCuadrica[0][1];

        float coefLambdaCuadrado = 1;
        float coefLambda = -(a + b);
        float coefConstante = (a * b) - (c * c);
        
        String polinomio = String.format("%.0fλ^2 + (%.0f)λ + (%.0f)", coefLambdaCuadrado, coefLambda, coefConstante);
        
        return polinomio;
    }
    
      public String factorizarPolinomio() {

        float a = matrizCuadrica[0][0];
        
        float b = matrizCuadrica[1][1];
        
        float c = matrizCuadrica[0][1];
        
        float coefLambdaCuadrado = 1;
        float coefLambda = -(a + b);
        float coefConstante = (a * b) - (c * c);

        float discriminante = coefLambda * coefLambda - 4 * coefLambdaCuadrado * coefConstante;

        if (discriminante < 0) {
             return "Se produjó un error debido a las raíces que se obtuvieron";
        } else {
            //bro aquí hacemos la vaina de las raíces 
            float raiz1 = (float) (-coefLambda + Math.sqrt(discriminante)) / (2 * coefLambdaCuadrado);
            float raiz2 = (float) (-coefLambda - Math.sqrt(discriminante)) / (2 * coefLambdaCuadrado);

            String factorizacion = String.format("(λ - %.2f)(λ - %.2f)", raiz1, raiz2);
            return factorizacion;
        }
    }
}
    

  

