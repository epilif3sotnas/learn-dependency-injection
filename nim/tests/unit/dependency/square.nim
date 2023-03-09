# internal
import dependency/square

# external
import unittest2


suite "Square Unit Tets":
    test "unit__compute__validData":
        let square = newSquare()

        let expected = 100'u64
        let value = square.compute(10)

        check value == expected

    test "unit__compute__bigNumber":
        let square = newSquare()

        let expected = 2_520_040_000'u64
        let value = square.compute(50_200'u32)

        check value == expected

    test "unit__compute__lowestNumber":
        let square = newSquare()

        let expected = 0'u64
        let value = square.compute(uint32.low())

        check value == expected