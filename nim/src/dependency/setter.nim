# internal
import fibonacci
import square


type
    Setter* = ref object
        fibonacci: Fibonacci
        square: Square

proc new_setter*(): Setter =
    return Setter()

proc set_fibonacci*(self: var Setter, fibonacci: Fibonacci) =
    self.fibonacci = fibonacci

proc set_square*(self: var Setter, square: Square) =
    self.square = square

proc do_all*(self: Setter, num: uint32) =
    if (self.fibonacci == nil or
            self.square == nil):
        return

    let fibonacci_result = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacci_result

    let square_result = self.square.compute(num)
    echo "Square of " & $num & ": " & $square_result

proc do_fibonacci*(self: Setter, num: uint32) =
    if self.fibonacci == nil:
        return

    let fibonacci_result = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacci_result

proc do_square*(self: Setter, num: uint32) =
    if self.square == nil:
        return

    let square_result = self.square.compute(num)
    echo "Square of " & $num & ": " & $square_result