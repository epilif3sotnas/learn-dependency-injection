# internal
import
  dependency/[
    fibonacci,
    square,
    constructor,
    setter,
    interfaceinjection
  ]


proc main() =
  let fibonacci = Fibonacci()
  let square = Square()

  # Constructor Injection
  var constructor = newConstructor(fibonacci, square)
  constructor.doAll(35'u32)

  # Setter Injection
  var setter = newSetter()
  setter.setFibonacci(fibonacci)
  setter.setSquare(square)
  setter.doAll(2'u32)

  # Interface Injection
  var interfaceInjection = newInterfaceInjection()
  interfaceInjection.computeService("Fibonacci", fibonacci, 27'u32)
  interfaceInjection.computeService("Square", square, 27_000'u32)

when is_main_module:
  main()