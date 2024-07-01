import java.util.*;
import javax.swing.*;
public class menu
{
  public float ejex;
  public float ejey;
  public float ejexy;
  public float const_;
  private PImage error;

  public menu() {
    String in = JOptionPane.showInputDialog("Bienvenido a nuestro proyecto final de álgebra lineal!!\n" + "Menú:\n" + "Ingrese 1 si desea realizar la graficación y calculo de una curva\n" + "Ingrese 2 si desea salir del programa");
    try {
      int entrada = Integer.parseInt(in);
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
      }
      if (entrada == 2) {
        System.out.println("Suerte!!");
      } else if(entrada == 0){
        System.out.println("calculando...");
      }else{
         System.out.println("error");
      }
    }
    catch(Exception e) {
      error = loadImage("Error.jpeg");
      image(error, 0, 0, width, height);
    }
  }
}
