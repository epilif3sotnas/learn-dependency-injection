# nim
import std/times
import std/strutils
import std/math
import std/sequtils
import std/algorithm

# internal
import dependency/fibonacci

# external
import unittest2


suite "Fibonacci Performance Tests":
    test "performance__compute__validData":
        let fibonacci = newFibonacci()

        let startTime = getTime()
        var requestsData: seq[float] = @[];
        while (getTime() - startTime) < initDuration(seconds=45):
            let start = cpuTime()
            discard fibonacci.compute(10_000'u32)
            requestsData.add(cpuTime() - start)

        let requestsPerMinute = ((requestsData.len() * 60)).float() / (requestsData.sum())
        let meanTime = (requestsData.sum() / (requestsData.len()).float()) * 1_000'f

        var medianTime = 0'f
        requestsData.sort()
        if requestsData.len() mod 2 == 0:
            medianTime = ((requestsData[(requestsData.len() / 2).int() - 1]) + (requestsData[(requestsData.len() / 2).int()])) / 2'f

        else:
            medianTime = requestsData[(requestsData.len() / 2).int()]

        medianTime = medianTime * 1_000'f
        
        let minTime = requestsData[requestsData.minIndex()] * 1_000'f
        let maxTime = requestsData[requestsData.maxIndex()] * 1_000'f

        echo()
        echo("Requests per Minute: $# requests/minute" % [$requestsPerMinute])
        echo("Mean Time: $# microseconds" % [$meanTime])
        echo("Median Time: $# microseconds" % [$medianTime])
        echo("Minimum Time: $# microseconds" % [$minTime])
        echo("Maximum Time: $# microseconds" % [$maxTime])

        check true == true