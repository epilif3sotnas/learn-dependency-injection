# internal
import dependency/fibonacci
import dependency/square
import dependency/constructor
import dependency/setter
import dependency/interface_injection


proc main() =
  let fibonacci = Fibonacci()
  let square = Square()

  # Constructor Injection
  var constructor = new_constructor(fibonacci, square)
  constructor.do_all(35'u32)

  # Setter Injection
  var setter = new_setter()
  setter.set_fibonacci(fibonacci)
  setter.set_square(square)
  setter.do_all(2'u32)

  # Interface Injection
  var interface_injection = new_interface_injection()
  interface_injection.compute_service("Fibonacci", fibonacci, 27'u32)
  interface_injection.compute_service("Square", square, 27_000'u32)

when is_main_module:
  main()