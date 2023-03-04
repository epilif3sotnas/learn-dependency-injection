# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square


class Setter(object):
    __fibonacci: Fibonacci = None
    __square: Square = None

    def __init__(self):
        pass

    def set_fibonacci(self, fibonacci: Fibonacci):
        self.__fibonacci = fibonacci

    def set_square(self, square: Square):
        self.__square = square

    def do_all(self, num: int):
        if (self.__fibonacci == None
                or self.__square == None):
            return
        
        fibonacci_result: int = self.__fibonacci.compute(num)
        print("Fibonacci of " + str(num) + ": " + str(fibonacci_result))
        
        square_result: int = self.__square.compute(num)
        print("Square of " + str(num) + ": " + str(square_result))

    def do_fibonacci(self, num: int):
        if self.__fibonacci == None:
            return
        
        fibonacci_result: int = self.__fibonacci.compute(num)
        print("Fibonacci of " + str(num) + ": " + str(fibonacci_result))

    def do_square(self, num: int):
        if self.__square == None:
            return
        
        square_result: int = self.__square.compute(num)
        print("Square of " + str(num) + ": " + str(square_result))