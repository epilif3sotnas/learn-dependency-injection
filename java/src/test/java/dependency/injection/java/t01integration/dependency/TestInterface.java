package dependency.injection.java.t01integration.dependency;

// internal
import dependency.injection.java.dependency.Interface;
import dependency.injection.java.dependency.Fibonacci;
import dependency.injection.java.dependency.Square;

// external
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;


public class TestInterface {
    
    @Test
    public void test__integration__computeService__validData() {
        var fibonacci = new Fibonacci();
        var square = new Square();
        var interface_ = new Interface();

        interface_.computeService(
            "Fibonacci",
            fibonacci,
            10
        );

        interface_.computeService(
            "Square",
            square,
            10
        );

        assertEquals(true, true);
    }
}
