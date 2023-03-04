type
    Fibonacci* = ref object

proc compute*(self: Fibonacci, num: uint32): uint64 =
    if num <= 0:
        return 0

    if num == 1:
        return 1

    var fibonacci = @[0,1]
    for idx in 2..num:
        try:
            let sum = fibonacci[idx - 1] + fibonacci[idx - 2]
            fibonacci.add(sum)

        except Exception as ex:
            echo ex.getStackTrace()
            fibonacci.add(0)
            break

    return uint64(fibonacci[^1])