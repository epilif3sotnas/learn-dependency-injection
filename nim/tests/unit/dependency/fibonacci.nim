# internal
import dependency/fibonacci

# external
import unittest2


suite "unit_fibonacci":
    test "unit__compute__valid_data":
        let fibonacci = new_fibonacci()

        let expected = 55'u64
        let value = fibonacci.compute(10)

        check value == expected

    test "unit__compute__0_data":
        let fibonacci = new_fibonacci()

        let expected = 0'u64
        let value = fibonacci.compute(0)

        check value == expected

    test "unit__compute__1_data":
        let fibonacci = new_fibonacci()

        let expected = 1'u64
        let value = fibonacci.compute(1)

        check value == expected

    test "unit__compute__big_number":
        let fibonacci = new_fibonacci()

        let expected = 14_139_011_350_745_967_675'u64
        let value = fibonacci.compute(100_000_000)

        check value == expected

    test "unit__compute__low_number":
        let fibonacci = new_fibonacci()

        let expected = 0'u64
        let value = fibonacci.compute(uint32.low())

        check value == expected