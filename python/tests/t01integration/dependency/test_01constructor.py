# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square
from dependency.constructor import Constructor


def test__integration__do_all__valid_data():
    fibonacci = Fibonacci()
    square = Square()
    constructor = Constructor(fibonacci, square)

    constructor.do_all(10)

    assert(True)