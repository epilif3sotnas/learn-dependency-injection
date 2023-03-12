# nim
import std/times
import std/strutils
import std/math
import std/sequtils
import std/algorithm

# internal
import dependency/square

# external
import unittest2


suite "Square Performance Tets":
    test "performance__compute__validData":
        let square = newSquare()

        let startTime = getTime()
        var requestsData: seq[float] = @[];
        while (getTime() - startTime) < initDuration(seconds=30):
            let start = cpuTime()
            discard square.compute(10_000'u32)
            requestsData.add(cpuTime() - start)

        let requestsPerMinute = (requestsData.len() * 60).float() / (requestsData.sum())
        let meanTime = (requestsData.sum() / (requestsData.len()).float()) * 1_000_000'f

        var medianTime = 0'f
        requestsData.sort()
        if requestsData.len() mod 2 == 0:
            medianTime = ((requestsData[(requestsData.len() / 2).int() - 1]) + (requestsData[(requestsData.len() / 2).int()])) / 2'f

        else:
            medianTime = requestsData[((requestsData.len() - 1) / 2).int()]

        medianTime *= 1_000_000'f
        
        let minTime = requestsData[requestsData.minIndex()] * 1_000_000'f
        let maxTime = requestsData[requestsData.maxIndex()] * 1_000_000'f

        echo("\nRequests per Minute: $# requests/min" % [$round(requestsPerMinute,3)])
        echo("Mean Time: $# microseconds" % [$round(meanTime,3)])
        echo("Median Time: $# microseconds" % [$round(medianTime,3)])
        echo("Minimum Time: $# microseconds" % [$round(minTime,3)])
        echo("Maximum Time: $# microseconds" % [$round(maxTime,3)])

        check(true)