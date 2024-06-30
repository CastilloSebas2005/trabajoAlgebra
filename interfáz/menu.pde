import java.util.*;
public class menu
{
   public menu(){
       
   }
   public int ejex;
   public int ejey;
   public int const_;
   
   
   public void Menu(){
     Scanner in = new Scanner(System.in);
     System.out.println("Bienvenido a nuestro proyecto final de álgebra lineal!!");
     boolean menu = true;
     while(menu){
       try{
       int option;
       System.out.println("Menú:");
       System.out.println("Ingrese 1 si desea realizar la graficación y calculo de una curva");
       System.out.println("Ingrese 2 si desea salir del programa");
       option = in.nextInt();
       switch(option){
         case 1:
         System.out.println("Ingrese un eje x al cuadrado");
         this.ejex = in.nextInt();
         System.out.println("Ingrese un eje y al cuadrado");
         this.ejey = in.nextInt();
         System.out.println("Ingrese una constante");
         this.const_ = in.nextInt();
         // Aquí hacemos la magia bro
         break;
         case 2:
        System.out.println("Muchas Gracias por revisar nuestro proyecto, hasta pronto!!!!");
         in.close();
         menu = false;
         break;
       }
       }catch(Exception e){
         System.out.println("ohhh no, ocurrió un error, rayos!!, vuelvelo a intentar");
         menu = true;
       }
       
       
       
       
   }
}
}
