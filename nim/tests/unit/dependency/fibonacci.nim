# internal
import dependency/fibonacci

# external
import unittest2


suite "Fibonacci Unit Tests":
    test "unit__compute__validData":
        let fibonacci = newFibonacci()

        let expected = 55'u64
        let value = fibonacci.compute(10)

        check value == expected

    test "unit__compute__0Data":
        let fibonacci = newFibonacci()

        let expected = 0'u64
        let value = fibonacci.compute(0)

        check value == expected

    test "unit__compute__1Data":
        let fibonacci = newFibonacci()

        let expected = 1'u64
        let value = fibonacci.compute(1)

        check value == expected

    test "unit__compute__bigNumber":
        let fibonacci = newFibonacci()

        let expected = 14_139_011_350_745_967_675'u64
        let value = fibonacci.compute(100_000_000'u32)

        check value == expected

    test "unit__compute__lowestNumber":
        let fibonacci = newFibonacci()

        let expected = 0'u64
        let value = fibonacci.compute(uint32.low())

        check value == expected