# internal
import dependency/fibonacci

# external
import unittest2


suite "Fibonacci Unit Tests":
    test "unit__compute__validData":
        let fibonacci = newFibonacci()

        let expected = 55'u64
        let actual = fibonacci.compute(10)

        check expected == actual

    test "unit__compute__0Data":
        let fibonacci = newFibonacci()

        let expected = 0'u64
        let actual = fibonacci.compute(0)

        check expected == actual

    test "unit__compute__1Data":
        let fibonacci = newFibonacci()

        let expected = 1'u64
        let actual = fibonacci.compute(1)

        check expected == actual

    test "unit__compute__lowestData":
        let fibonacci = newFibonacci()

        let expected = 0'u64
        let actual = fibonacci.compute(uint32.low())

        check expected == actual