# internal
import dependency/fibonacci
import dependency/square
import dependency/constructor
import dependency/setter
import dependency/interface_injection

# external
import unittest2


suite "integration":
    test "integration__constructor__do_all__valid_data":
        let fibonacci = new_fibonacci()
        let square = new_square()
        let constructor = new_constructor(fibonacci, square)

        constructor.do_all(10'u32)

        check true == true

    test "integration__setter__do_all__valid_data":
        let fibonacci = new_fibonacci()
        let square = new_square()
        let setter = new_setter()
        setter.set_fibonacci(fibonacci)
        setter.set_square(square)

        setter.do_all(10'u32)

        check true == true

    test "integration__interface_injection__do_all__valid_data":
        let fibonacci = new_fibonacci()
        let interface_injection = new_interface_injection()

        interface_injection.compute_service(
            "Fibonacci",
            fibonacci,
            10
        )

        check true == true