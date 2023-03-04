# python
from abc import ABC, abstractclassmethod


class MathCalculation(ABC):

    @abstractclassmethod
    def compute(self, num: int) -> int:
        pass