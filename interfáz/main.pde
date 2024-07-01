void setup(){
 menu prueba = new menu();
 matriz prueba_m = new matriz(prueba.ejex, prueba.ejey, prueba.ejexy, prueba.const_);
 float matrizAsociada1[][] = prueba_m.getMatrizAsociada(10);
 float matrizAsociada2[][] = prueba_m.getMatrizAsociada(5);
 prueba_m.imprimirMatriz();
 vectoresPropios prueba_v = new vectoresPropios(matrizAsociada1, matrizAsociada2);
}
