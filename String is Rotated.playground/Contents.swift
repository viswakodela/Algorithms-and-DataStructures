import UIKit


/*Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.

Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 
 Sample input and output
 The string “abcde” and “eabcd” should return true.
 The string “abcde” and “cdeab” should return true.
 The string “abcde” and “abced” should return false; this is not a string rotation.
 The string “abc” and “a” should return false; this is not a string rotation.
 */


// I failed in this challange
func challange8(inputString: String, rotatedString: String) -> Bool {
    
    
    
    
    return false
    
}

// MARK:- Paul's Answer
func challange8a(inputString: String, roatedString: String) -> Bool {
    
    guard inputString.count == roatedString.count else {return false}
    
    let combined = inputString + inputString
    return combined.contains(roatedString)
}

challange8a(inputString: "PaulHudson", roatedString: "sonPaulHud")


