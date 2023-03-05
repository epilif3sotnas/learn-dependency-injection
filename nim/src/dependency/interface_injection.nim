# nim
import std/tables

# internal
import math_calculation


type
    InterfaceInjection* = ref object

proc new_interface_injection*(): InterfaceInjection =
    return InterfaceInjection()

proc compute_service*(
    self: InterfaceInjection,
    service_name: string,
    service: MathCalculation,
    num: uint32
) =
    let value = service.compute(num)
    echo service_name & " of " & $num & ": " & $value