import Foundation

func solution(_ number:[Int]) -> Int {
    return combination(number, 3)
}

func combination(_ array: [Int], _ n: Int) -> Int {
    var result = 0
    if array.count < n { return result }
    
    func cycle(currentIndex: Int, currentCount: Int, currentSum: Int) {
        if currentCount == n {
            if currentSum == 0 {
                result += 1
            }
            return
        }
        
        for i in currentIndex..<array.count {
            cycle(
                currentIndex: i + 1, 
                currentCount: currentCount + 1, 
                currentSum: currentSum + array[i]
            )
        }
    }
    
    cycle(currentIndex: 0, currentCount: 0, currentSum: 0)
    
    return result
}
