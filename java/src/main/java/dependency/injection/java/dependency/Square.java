package dependency.injection.java.dependency;

public class Square implements MathCalculation {

    public Square() {}

    public long compute(int num) {
        return num * num;
    }
    
}
