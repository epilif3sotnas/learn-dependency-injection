package dependency.injection.java.dependency;

public class Interface {

    public Interface() {}

    public void computeService(
        String serviceName,
        MathCalculation service,
        int num
    ) {
        long result = service.compute(num);
        System.out.println(serviceName + " of "
                            + String.valueOf(num)
                            + ": " + result);
    }
    
}
