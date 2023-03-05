# internal
import fibonacci
import square


type
    Constructor* = ref object
        fibonacci: Fibonacci
        square: Square

proc new_constructor*(fibonacci: Fibonacci, square: Square): Constructor =
    return Constructor(
        fibonacci: fibonacci,
        square: square
    )

proc do_all*(self: Constructor, num: uint32) =
    if (self.fibonacci == nil or
            self.square == nil):
        return

    let fibonacci_result = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacci_result

    let square_result = self.square.compute(num)
    echo "Square of " & $num & ": " & $square_result