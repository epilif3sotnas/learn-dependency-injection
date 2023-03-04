type
    Square* = ref object

proc new_square*(): Square =
    return Square()

proc compute*(self: Square, num: uint32): uint64 =
    return num * num