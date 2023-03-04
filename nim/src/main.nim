# internal
import dependency/fibonacci
import dependency/square
import dependency/constructor
import dependency/setter


proc main() =
  let fibonacci = Fibonacci()
  let square = Square()

  # Constructor Injection
  var constructor = new_constructor(fibonacci, square)
  constructor.do_all(uint32(35))
  constructor.do_fibonacci(uint32(10))
  constructor.do_square(uint32(21))

  # Setter Injection
  var setter = new_setter()
  setter.set_fibonacci(fibonacci)
  setter.set_square(square)
  setter.do_all(uint32(2))
  setter.do_fibonacci(uint32(43))
  setter.do_square(uint32(987))

  # Interface Injection
  ### TODO - When Nim implementation of interface is available or like compute_service in Python ###

when is_main_module:
  main()