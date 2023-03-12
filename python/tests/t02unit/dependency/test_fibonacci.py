# internal
from dependency.fibonacci import Fibonacci


def test__unit__compute__valid_data():
    fibonacci = Fibonacci()

    expected = 55
    actual = fibonacci.compute(10)

    assert(expected == actual)

def test__unit__compute__0_data():
    fibonacci = Fibonacci()

    expected = 0
    actual = fibonacci.compute(0)

    assert(expected == actual)

def test__unit__compute__1_data():
    fibonacci = Fibonacci()

    expected = 1
    actual = fibonacci.compute(1)

    assert(expected == actual)