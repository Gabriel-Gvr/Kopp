import java.util.Arrays;
import java.util.List;

public class koppMain {
    public static String sequenciaGerada(List<Double> valores) {
        StringBuilder resultado = new StringBuilder();
        double soma = 0.0;

        for (int i = 0; i < valores.size(); i++) {
            double valor = valores.get(i);
            resultado.append(i + 1).append(" cujo valor é R$ ").append(String.format("%.2f", valor));
            soma += valor;

            if (i < valores.size() - 1) {
                resultado.append(", ");
            } else {
                resultado.append(".");
            }
        }

        resultado.append(" Total = ").append(String.format("%.2f", soma)).append(".");

        return "Remessa gerada: " + resultado;
    }

    public static void main(String[] args) {
        List<Double> valores = Arrays.asList(88.00, 130.00, 54.90, 293.30, 44.80);
        String resultado = sequenciaGerada(valores);
        System.out.println(resultado);
    }
}
