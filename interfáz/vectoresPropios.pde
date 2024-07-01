public class vectoresPropios {
  private float matrizAsociada1[][] = new float[2][2];
  private float matrizAsociada2[][] = new float[2][2];
  public float vectoresPropios1[] = new float[2];
  public float vectoresPropios2[] = new float[2];
  public vectoresPropios(float MatrizAsociada1[][], float MatrizAsociada2[][]) {
    matrizAsociada1 = MatrizAsociada1;
    matrizAsociada2 = MatrizAsociada2;
    vectoresPropios1 = obtenerVectoresPropios(matrizAsociada1);
    vectoresPropios2 = obtenerVectoresPropios(matrizAsociada2);
  }

  private float[] obtenerVectoresPropios(float MatrizAsociada[][]) {
    float x = -MatrizAsociada[0][1]/MatrizAsociada[0][0];
    float vectoresPropios[] = new float[2];
    vectoresPropios[0] = x;
    vectoresPropios[1] = 1;
    return vectoresPropios;
  }
}
