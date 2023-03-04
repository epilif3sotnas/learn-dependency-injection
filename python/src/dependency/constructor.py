# internal
from dependency.fibonacci import Fibonacci
from dependency.square import Square


class Constructor(object):
    __fibonacci: Fibonacci = None
    __square: Square = None

    def __init__(self, fibonacci: Fibonacci, square: Square):
        self.__fibonacci = fibonacci
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