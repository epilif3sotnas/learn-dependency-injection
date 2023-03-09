# internal
from dependency.mathcalculation import MathCalculation


class Interface(object):

    def __init__(self):
        pass

    def compute_service(
        self,
        service_name: str,
        service: MathCalculation,
        num: int
    ):
        if (not service_name
                or not isinstance(service_name, str)
                or not isinstance(service, MathCalculation)
                or not num
                or not isinstance(num,int)):
            return
        
        result: int = service.compute(num)

        print(service_name + " of " + str(num) + ": " + str(result))