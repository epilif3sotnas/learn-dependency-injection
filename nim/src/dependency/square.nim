type
    Square* = ref object

proc compute*(self: Square, num: uint32): uint64 =
    return num * num