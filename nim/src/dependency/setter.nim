# internal
import fibonacci


type
    Setter* = ref object
        fibonacci: Fibonacci

proc set_fibonacci*(self: Setter, fibonacci: Fibonacci) =
    self.fibonacci = fibonacci

proc do_fibonacci*(self: Setter, num: uint32) =
    if self.fibonacci == nil:
        return

    let fibonacci_result = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacci_result