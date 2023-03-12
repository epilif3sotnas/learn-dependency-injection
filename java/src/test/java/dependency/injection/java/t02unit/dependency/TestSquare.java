package dependency.injection.java.t02unit.dependency;

// internal
import dependency.injection.java.dependency.Square;

// external
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;


public class TestSquare {
    
    @Test
    public void test__unit__compute__validData() {
        var square = new Square();

        long expected = 100L;
        long actual = square.compute(10);

        assertEquals(expected, actual);
    }

    @Test
    public void test__unit__compute__bigData() {
        var square = new Square();

        long expected = 625_000_000L;
        long actual = square.compute(25_000);

        assertEquals(expected, actual);
    }

    @Test
    public void test__unit__compute__lowestData() {
        var square = new Square();

        long expected = 0L;
        long actual = square.compute(Integer.MIN_VALUE);

        assertEquals(expected, actual);
    }
}
