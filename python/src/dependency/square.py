# internal
from dependency.mathcalculation import MathCalculation


class Square(MathCalculation):
    
    def __init__(self):
        pass

    def compute(self, num: int) -> int:
        if not isinstance(num, int):
            return -1
        
        return num * num