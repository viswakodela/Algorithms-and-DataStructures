import UIKit


// MARK:- Check whether the String is Palindrom or not, Ex: MoM

/// My Answer
func chanllange2(inputString: String) -> Bool {
    var reversedArray = [Character]()
    
    let inputArray = Array(inputString.lowercased())
    
    var index = inputArray.count - 1
    
    while index >= 0 {
        reversedArray.append(inputArray[index])
        index -= 1
    }
    
    if inputArray == reversedArray {
        return true
    }
    return false
    
}

chanllange2(inputString: "Kayak")


/// Pauls Answer
func challange2a(inputString: String) -> Bool {
    return String(inputString.reversed()) == inputString
}


