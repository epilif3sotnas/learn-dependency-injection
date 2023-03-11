# internal
import dependency/fibonacci
import dependency/square
import dependency/setter

# external
import unittest2


suite "Setter Integration Tests":
    test "integration__doAll__validData":
        let fibonacci = newFibonacci()
        let square = newSquare()
        let setter = newSetter()
        setter.setFibonacci(fibonacci)
        setter.setSquare(square)

        setter.doAll(10'u32)

        check true == true