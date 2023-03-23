# std
from time import time

# internal
from dependency.fibonacci import Fibonacci


def test__performance__do_all__valid_data():
    fibonacci = Fibonacci()

    start_time = time()
    requestsData = []
    while (time() - start_time) < 30:
        start = time()
        fibonacci.compute(10_000)
        requestsData.append(time() - start)

    requestsPerMinute = (len(requestsData) * 60) / sum(requestsData)
    meanTime = (sum(requestsData) / (len(requestsData))) * 1_000_000

    medianTime = 0
    requestsData.sort()
    if len(requestsData) % 2 == 0:
        medianTime = ((requestsData[int((len(requestsData) / 2) - 1)]) + (requestsData[int((len(requestsData) / 2))])) / 2

    else:
        medianTime = requestsData[int((len(requestsData) - 1) / 2)]

    medianTime *= 1_000_000
    
    minTime = requestsData[0] * 1_000_000
    maxTime = requestsData[-1] * 1_000_000

    print("\nRequests per Minute: {} requests/min".format(str(round(requestsPerMinute,3))))
    print("Mean Time: {} microseconds".format(str(round(meanTime,3))))
    print("Median Time: {} microseconds".format(str(round(medianTime,3))))
    print("Minimum Time: {} microseconds".format(str(round(minTime,3))))
    print("Maximum Time: {} microseconds".format(str(round(maxTime,3))))

    assert(True)