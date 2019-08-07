import UIKit

/*
Challenge 11: Three different letters
Difficulty: Tricky

Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.

Sample input and output
The strings “Clamp” and “Cramp” would return true, because there is one letter difference.
The strings “Clamp” and “Crams” would return true, because there are two letter differences.
The strings “Clamp” and “Grams” would return true, because there are three letter differences.
The strings “Clamp” and “Grans” would return false, because there are four letter differences.
The strings “Clamp” and “Clam” would return false, because they are different lengths.
The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.
 */

// My Answer

func challenge11(first: String, second: String) -> Bool {
    
    guard first.count == second.count else {return false}
    
    let firstStringArray = Array(first)
    let secondStringArray = Array(second)
    
    var difference = 0
    
    for (index, _) in firstStringArray.enumerated() {
        if firstStringArray[index] != secondStringArray[index] {
            difference += 1
        }
    }
    
    if difference > 3 {
        return false
    } else {
        return true
    }
}


challenge11(first: "Clamp", second: "Crams")




// Pauls Answer
func challenge11a(first: String, second: String) -> Bool {
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first)
    let secondArray = Array(second)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            
            if differences == 4 {
                return false
            }
        }
    }
    
    return true
}
