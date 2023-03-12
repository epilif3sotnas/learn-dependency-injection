# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square
from dependency.interface import Interface


def test__integration__compute_service__valid_data():
    fibonacci = Fibonacci()
    square = Square()
    interface = Interface()

    interface.compute_service(
        "Fibonacci",
        fibonacci,
        10
    )
    
    interface.compute_service(
        "Square",
        square,
        10
    )

    assert(True)