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
    constructor.do_fibonacci(10)
    constructor.do_square(21)

    # Setter Injection
    setter = Setter()
    setter.set_fibonacci(fibonacci)
    setter.set_square(square)
    setter.do_all(2)
    setter.do_fibonacci(43)
    setter.do_square(987)

    # Interface Injection
    interface = Interface()
    interface.add_service("Fibonacci", fibonacci)
    interface.add_service("Square", square)
    interface.compute_from_services(10)
    interface.compute_service("Fibonacci", fibonacci, 20)
    interface.compute_service("Square", square, 99)

if __name__ == "__main__":
    main()