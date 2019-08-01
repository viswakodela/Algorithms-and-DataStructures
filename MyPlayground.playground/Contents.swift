import UIKit

// MARK:- Check Unqire String or not, consider it as case sensitive Ex:- AaBb should return true, abc should return true and Hello should return false

/// My answer
func challange1(inputString: String) -> Bool {
    
    var inputArray = Array(inputString)
    
    var inputedSet = Set(inputArray)
    
    if inputArray.count == inputedSet.count {
        return true
    } else {
        return false
    }
}

challange1(inputString: "Mom")

/// Pauls Answer
func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}

