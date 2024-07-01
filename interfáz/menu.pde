import java.util.*;
import javax.swing.*;
public class menu
{
  public float ejex;
  public float ejey;
  public float ejexy;
  public float const_;
  public formaCanonica canonica;
  public vectoresPropios vectores;
  private PImage error;

  public menu() {
    String in = JOptionPane.showInputDialog("Bienvenido a nuestro proyecto final de álgebra lineal!!\n" + "Menú:\n" + "Ingrese 1 si desea realizar la graficación y calculo de una curva\n" + "Ingrese 2 si desea salir del programa");
    try {
      int entrada = Integer.parseInt(in);
      boolean verificar = false;
      while (entrada == 1) {
        in = JOptionPane.showInputDialog("Ingrese un x elevado al cuadrado");
        ejex = Float.parseFloat(in);
        in = JOptionPane.showInputDialog("Ingrese un y elevado al cuadrado");
        ejey = Float.parseFloat(in);
        in = JOptionPane.showInputDialog("Ingrese un xy");
        ejexy = Float.parseFloat(in);
        in = JOptionPane.showInputDialog("Ingrese una constante");
        const_ = Float.parseFloat(in);
        entrada = 0;
        verificar = true;
      }
      if (entrada == 2) {
        System.out.println("Suerte!!");
        exit();
      } else if (entrada == 0 && verificar == true) {
        System.out.println("calculando...");
        calculando();
      } else {
        System.out.println("error");
      }
    }
    catch(Exception e) {
      error = loadImage("Error.jpeg");
      image(error, 0, 0, width, height);
      exit();
    }
  }
  public void calculando() {
    String formaCuadratica = str(ejex) + "x^2 + " + str(ejey) + "y^2 + " + str(ejexy) + "xy + "+ str(const_);
    System.out.println("Forma cuadrática: " + formaCuadratica);
    matriz matrizCuadrica = new matriz(ejex, ejey, ejexy);
    float matrizAsociada1[][] = matrizCuadrica.getMatrizAsociada(matrizCuadrica.factorizarPolinomio()[0]);
    float matrizAsociada2[][] = matrizCuadrica.getMatrizAsociada(matrizCuadrica.factorizarPolinomio()[1]);
    canonica = new formaCanonica(matrizCuadrica.factorizarPolinomio(), const_);
    System.out.println("Forma canonica: " + canonica.obtenerFormaCanonica());
    matrizCuadrica.imprimirMatriz();
    System.out.println("Valor propio1: λ1 = " + matrizCuadrica.factorizarPolinomio()[0]);
    System.out.println("Valor propio2: λ2 = " + matrizCuadrica.factorizarPolinomio()[1]);
    vectores = new vectoresPropios(matrizAsociada1, matrizAsociada2);
    System.out.println("Vector propio asociado a λ1 = " + "(" +vectores.vectoresPropios1[0] + ", " + vectores.vectoresPropios1[1] + ")");
    System.out.println("Vector propio asociado a λ2 = " + "(" +vectores.vectoresPropios2[0] + ", " + vectores.vectoresPropios2[1] + ")");
  }
}
