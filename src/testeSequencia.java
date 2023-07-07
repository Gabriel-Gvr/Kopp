import org.junit.Assert;
import org.junit.Test;
import java.util.Arrays;


public class testeSequencia {
    @Test
    public void testeGerarSequencias() {
        Assert.assertEquals("Remessa gerada: 1 cujo valor é R$ 88,00, 2 cujo valor é R$ 130,00, 3 cujo valor é R$ 54,90, 4 cujo valor é R$ 293,30, 5 cujo valor é R$ 44,80. Total = 611,00.",
                koppMain.sequenciaGerada(Arrays.asList(88.00, 130.00, 54.90, 293.30, 44.80)));
    }
}
