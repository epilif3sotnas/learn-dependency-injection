# internal
import dependency/fibonacci
import dependency/square
import dependency/constructor

# external
import unittest2


suite "Constructor Integration Tests":
    test "integration__doAll__validData":
        let fibonacci = newFibonacci()
        let square = newSquare()
        let constructor = newConstructor(fibonacci, square)

        constructor.doAll(10'u32)

        check(true)