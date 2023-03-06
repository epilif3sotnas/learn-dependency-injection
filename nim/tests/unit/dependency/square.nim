# internal
import dependency/square

# external
import unittest2


suite "unit_square":
    test "unit__compute__valid_data":
        let square = new_square()

        let expected = 100'u64
        let value = square.compute(10)

        check value == expected

    test "unit__compute__big_number":
        let square = new_square()

        let expected = 2_520_040_000'u64
        let value = square.compute(50_200'u32)

        check value == expected

    test "unit__compute__low_number":
        let square = new_square()

        let expected = 0'u64
        let value = square.compute(uint32.low())

        check value == expected