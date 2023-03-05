package dependency.injection.java.dependency;


public class Setter {
    private Fibonacci fibonacci = null;
    private Square square = null;
    
    public Setter() {
    }

    public void setFibonacci(Fibonacci fibonacci) {
        this.fibonacci = fibonacci;
    }

    public void setSquare(Square square) {
        this.square = square;
    }

    public void doAll(int num) {
        if (this.fibonacci == null
                || this.square == null) {
            return;
        }

        long fibonacci_result = this.fibonacci.compute(num);
        System.out.println("Fibonacci of " + num + ": " + fibonacci_result);

        long square_result = this.square.compute(num);
        System.out.println("Square of " + num + ": " + square_result);
    }
}