# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square
from dependency.constructor import Constructor
from dependency.setter import Setter
from dependency.interface import Interface


def main():
    fibonacci = Fibonacci()
    square = Square()

    # Constructor Injection
    constructor = Constructor(fibonacci, square)
    constructor.do_all(35)

    # Setter Injection
    setter = Setter()
    setter.set_fibonacci(fibonacci)
    setter.set_square(square)
    setter.do_all(2)

    # Interface Injection
    interface = Interface()
    interface.compute_service("Fibonacci", fibonacci, 20)
    interface.compute_service("Square", square, 99)

if __name__ == "__main__":
    main()