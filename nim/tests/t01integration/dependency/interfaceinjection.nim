# internal
import dependency/fibonacci
import dependency/square
import dependency/interfaceinjection

# external
import unittest2


suite "Interface Injection Integration Tests":
    test "integration__computeService__validData":
        let fibonacci = newFibonacci()
        let square = newSquare()
        let interfaceInjection = newInterfaceInjection()

        interfaceInjection.computeService(
            "Fibonacci",
            fibonacci,
            10
        )
        
        interfaceInjection.computeService(
            "Square",
            square,
            10
        )

        check(true)