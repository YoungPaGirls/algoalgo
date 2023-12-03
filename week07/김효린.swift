import Foundation

func solution(_ food:[Int]) -> String {
    var original = ""
    
    for (foodIndex, foodCount) in food.enumerated() {
        if foodIndex == 0 {
            continue
        }
        
        let eachFoodCount = foodCount / 2
        
        let indexString = String(foodIndex)
        original += String(repeating: indexString, count: eachFoodCount)
    }
    
    let reversed = String(original.reversed())
    
    let result = original + "0" + reversed

    return result
}
