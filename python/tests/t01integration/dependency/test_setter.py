# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square
from dependency.setter import Setter


def test__integration__do_all__valid_data():
    fibonacci = Fibonacci()
    square = Square()
    setter = Setter()
    setter.set_fibonacci(fibonacci)
    setter.set_square(square)

    setter.do_all(10)

    assert(True)