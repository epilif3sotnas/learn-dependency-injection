package dependency.injection.java.t03performance.dependency;

// java
import java.util.Date;
import java.util.ArrayList;
import java.util.Comparator;

// internal
import dependency.injection.java.dependency.Fibonacci;

// external
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;


public class TestFibonacci {
    
    @Test
    public void test_performance__doAll__validData() {
        var fibonacci = new Fibonacci();

        long startTime = new Date().getTime();
        var requestsData = new ArrayList<Long>();
        while (new Date().getTime() - startTime < 30_000L) {
            long start = System.nanoTime();
            fibonacci.compute(10_000);
            requestsData.add((System.nanoTime() - start));
        }

        double requestsPerMinute = (requestsData.size() * 60_000_000_000L) / requestsData.stream().mapToLong(Long::longValue).sum();
        double meanTime = requestsData.stream().mapToLong(Long::longValue).sum() / (requestsData.size() * 1_000L);

        double medianTime = 0.0;
        requestsData.sort(Comparator.naturalOrder());
        if (requestsData.size() % 2 == 0) {
            medianTime = (requestsData.get((requestsData.size() / 2) - 1) + requestsData.get(requestsData.size() / 2)) / 2;
        } else {
            medianTime = requestsData.get((requestsData.size() - 1) / 2);
        }

        medianTime /= 1_000L;
        
        double minTime = requestsData.stream().min(Comparator.naturalOrder()).get() / 1_000L;
        double maxTime = requestsData.stream().max(Comparator.naturalOrder()).get() / 1_000L;

        System.out.println(String.format("\nRequests per Minute: %.3f requests/minute", requestsPerMinute));
        System.out.println(String.format("Mean Time: %.3f microseconds", meanTime));
        System.out.println(String.format("Median Time: %.3f microseconds", medianTime));
        System.out.println(String.format("Minimum Time: %.3f microseconds", minTime));
        System.out.println(String.format("Maximum Time: %.3f microseconds", maxTime));

        assertEquals(true, true);
    }
}
