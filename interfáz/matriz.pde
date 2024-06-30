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
}
