# internal
import fibonacci
import square


type
    Constructor* = ref object
        fibonacci: Fibonacci
        square: Square

proc newConstructor*(fibonacci: Fibonacci, square: Square): Constructor =
    return Constructor(
        fibonacci: fibonacci,
        square: square
    )

proc doAll*(self: Constructor, num: uint32) =
    if (self.fibonacci == nil or
            self.square == nil):
        return

    let fibonacciResult = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacciResult

    let squareResult = self.square.compute(num)
    echo "Square of " & $num & ": " & $squareResult