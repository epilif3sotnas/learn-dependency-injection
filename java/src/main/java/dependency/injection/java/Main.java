package dependency.injection.java;

// internal
import dependency.injection.java.dependency.Fibonacci;
import dependency.injection.java.dependency.Square;
import dependency.injection.java.dependency.Constructor;
import dependency.injection.java.dependency.Setter;
import dependency.injection.java.dependency.Interface;


public class Main {
    public static void main(String[] args) {
        Fibonacci fibonacci = new Fibonacci();
        Square square = new Square();

        // Constructor Injection
        Constructor constructor = new Constructor(fibonacci, square);
        constructor.doAll(35);

        // Setter Injection
        Setter setter = new Setter();
        setter.setFibonacci(fibonacci);
        setter.setSquare(square);
        setter.doAll(35);

        // Interface Injection
        Interface interface_ = new Interface();
        interface_.computeService("Fibonacci", fibonacci, 27);
        interface_.computeService("Square", square, 27_000);
    }
}
