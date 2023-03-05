package dependency.injection.java.dependency;


public class Constructor {
    private Fibonacci fibonacci = null;
    private Square square = null;
    
    public Constructor(Fibonacci fibonacci, Square square) {
        this.fibonacci = fibonacci;
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