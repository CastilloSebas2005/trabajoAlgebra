import org.apache.commons.math3.linear.*;

public class vectoresPropios {
    private double[][] matrizAsociada;
    private RealVector[] vectoresPropios;

    public vectoresPropios(double[][] matrizAsociada) {
        this.matrizAsociada = matrizAsociada;
        calcularVectoresPropios();
    }

    private void calcularVectoresPropios() {
        RealMatrix matriz = MatrixUtils.createRealMatrix(matrizAsociada);
        EigenDecomposition ed = new EigenDecomposition(matriz);
        vectoresPropios = new RealVector[matrizAsociada.length];
        for (int i = 0; i < matrizAsociada.length; i++) {
            vectoresPropios[i] = ed.getEigenvector(i);
        }
    }

    public RealVector[] getVectoresPropios() {
        return vectoresPropios;
    }
}
