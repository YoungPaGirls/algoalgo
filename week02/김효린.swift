import Foundation

func solution(_ s:String) -> [Int] {
    var dict = [Character: Int]()
    var result = [Int]()
    
    for (index, c) in s.enumerated() {
        if let preIndex = dict[c] {
            result.append(index - preIndex)
        } else {
            result.append(-1)
        }
        dict[c] = index
    }
    return result
}
