package dependency.injection.java.dependency;

// java
import java.util.ArrayList;


public class Fibonacci implements MathCalculation {

    public Fibonacci() {}

    public long compute(int num) {
        if (num <= 0) return 0;
        if (num == 1) return 1;

        ArrayList<Long> fibonacci = new ArrayList<Long>();
        fibonacci.add(0L);
        fibonacci.add(1L);

        for (int i = 2; i <= num; i++) {
            try {
                long sum = fibonacci.get(i - 1) + fibonacci.get(i - 2);
                fibonacci.add(sum);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return fibonacci.get(fibonacci.size() - 1);
    }
    
}
