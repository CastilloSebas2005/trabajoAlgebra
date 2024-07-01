public class formaCanonica {
  final String ecuacionCanonica = "(x^2/a^2) + (y^2/b^2) = 1";
  private float x;
  private float y;
  private int a;
  private int b;
  private float const_;
  private float matrizDiagonal[][] = new float[2][2];
  public formaCanonica(int valoresPropios[], float Const_) {
    matrizDiagonal[0][0] = valoresPropios[0];
    matrizDiagonal[0][1] = matrizDiagonal[1][0]= 0;
    matrizDiagonal[1][1] = valoresPropios[1];
    x = matrizDiagonal[0][0];
    y = matrizDiagonal[1][1];
    const_ = Const_;
    a = int(const_ / x);
    b = int(const_ / y);
    x /= const_;
    y /= const_;
    const_ /= const_;
  }
  public String obtenerFormaCanonica() {
    if (x < 0 || y < 0) {
      return "no hay forma canonica de elipse";
    }
    String a_ = str(a);
    String b_ = str(b);
    String constante = str(const_);

    return "x^2" + "/" + a_ + " + " +"y^2/" + b_ + " = " + constante;
  }

  public int[] anchoYlargo() {
    int valores[] = {a, b};
    return valores;
  }
}
