# internal
from dependency.square import Square


def test__unit__compute__valid_data():
    square = Square()

    expected = 100
    actual = square.compute(10)

    assert(expected == actual)

def test__unit__compute__0_data():
    square = Square()

    expected = 0
    actual = square.compute(0)

    assert(expected == actual)

def test__unit__compute__1_data():
    square = Square()

    expected = 1
    actual = square.compute(1)

    assert(expected == actual)