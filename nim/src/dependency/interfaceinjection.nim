# std
import
    std/tables

# internal
import
    mathcalculation


type
    InterfaceInjection* = ref object

proc newInterfaceInjection*(): InterfaceInjection =
    return InterfaceInjection()

proc computeService*(
    self: InterfaceInjection,
    serviceName: string,
    service: MathCalculation,
    num: uint32
) =
    let value = service.compute(num)
    echo serviceName & " of " & $num & ": " & $value