package dependency.injection.java.t02unit.dependency;

// internal
import dependency.injection.java.dependency.Fibonacci;

// external
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;


public class TestFibonacci {
    
    @Test
    public void test_unit__compute__validData() {
        var fibonacci = new Fibonacci();

        long expected = 55L;
        long actual = fibonacci.compute(10);

        assertEquals(expected, actual);
    }

    @Test
    public void test_unit__compute__0Data() {
        var fibonacci = new Fibonacci();

        long expected = 0L;
        long actual = fibonacci.compute(0);

        assertEquals(expected, actual);
    }

    @Test
    public void test_unit__compute__1Data() {
        var fibonacci = new Fibonacci();

        long expected = 1L;
        long actual = fibonacci.compute(1);

        assertEquals(expected, actual);
    }

    @Test
    public void test_unit__compute__lowestData() {
        var fibonacci = new Fibonacci();

        long expected = 0L;
        long actual = fibonacci.compute(Integer.MIN_VALUE);

        assertEquals(expected, actual);
    }
}
