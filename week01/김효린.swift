import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScore = score.sorted(by: >)

    let scoreCount = score.count
    var maxProfit = 0
    var index = m - 1
    while index < scoreCount {
        let minSelectScore = sortedScore[index] * m
        maxProfit += minSelectScore
        index += m
    }

    return maxProfit
}
