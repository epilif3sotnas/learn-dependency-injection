# internal
import fibonacci
import square


type
    Setter* = ref object
        fibonacci: Fibonacci
        square: Square

proc newSetter*(): Setter =
    return Setter()

proc setFibonacci*(self: Setter, fibonacci: Fibonacci) =
    self.fibonacci = fibonacci

proc setSquare*(self: Setter, square: Square) =
    self.square = square

proc doAll*(self: Setter, num: uint32) =
    if (self.fibonacci == nil or
            self.square == nil):
        return

    let fibonacciResult = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacciResult

    let squareResult = self.square.compute(num)
    echo "Square of " & $num & ": " & $squareResult