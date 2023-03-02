# internal
import fibonacci


type
    Constructor* = ref object
        fibonacci: Fibonacci

proc newConstructor*(fibonacci: Fibonacci): Constructor =
    var constructor = Constructor()
    constructor.fibonacci = fibonacci
    return constructor

proc do_fibonacci*(self: Constructor, num: uint32) =
    if self.fibonacci == nil:
        return

    let fibonacci_result = self.fibonacci.compute(num)
    echo "Fibonacci of " & $num & ": " & $fibonacci_result