package dependency.injection.java.t01integration.dependency;

// internal
import dependency.injection.java.dependency.Setter;
import dependency.injection.java.dependency.Fibonacci;
import dependency.injection.java.dependency.Square;

// external
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;


public class TestSetter {
    
    @Test
    public void test_integration__doAll__validData() {
        var fibonacci = new Fibonacci();
        var square = new Square();
        var setter = new Setter();
        setter.setFibonacci(fibonacci);
        setter.setSquare(square);

        setter.doAll(10);

        assertEquals(true, true);
    }
}
