# internal
from dependency.math_calculation import MathCalculation


class Interface(object):
    __services: dict = {}

    def __init__(self):
        pass

    def add_service(self, service_name: str, service: MathCalculation):
        if (not service_name
                or not isinstance(service_name, str)
                or not isinstance(service, MathCalculation)):
            return

        self.__services.update({service_name: service})

    def compute_from_services(self, num: int):
        if (not num
                or not isinstance(num, int)
                or len(self.__services) <= 0):
            return
        
        for (name, service) in self.__services.items():
            result: int = service.compute(num)

            print(name + " of " + str(num) + ": " + str(result))

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