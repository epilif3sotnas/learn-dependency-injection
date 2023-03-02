# internal
import dependency/fibonacci
import dependency/constructor

proc main() =
  let fibonacci = Fibonacci()

  var constructor = newConstructor(fibonacci)
  constructor.do_fibonacci(uint32(10))

when is_main_module:
  main()