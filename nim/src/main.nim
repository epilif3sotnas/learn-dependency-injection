# internal
import dependency/fibonacci
import dependency/constructor
import dependency/setter


proc main() =
  let fibonacci = Fibonacci()

  # Constructor Injection
  var constructor = newConstructor(fibonacci)
  constructor.do_fibonacci(uint32(10))

  # Setter injection
  var setter = Setter()
  setter.set_fibonacci(fibonacci)
  setter.do_fibonacci(uint32(20))

when is_main_module:
  main()