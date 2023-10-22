import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var nameDict = [String: Int]()
    for index in name.indices {
        nameDict[name[index]] = yearning[index]
    }
    
    var result = [Int](repeating: 0, count: photo.count)
    for (index, onePhoto) in photo.enumerated() {
        for person in onePhoto {
            if let score = nameDict[person] {
                result[index] += score
            }
        }
    }
    return result
}
