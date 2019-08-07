


import UIKit

/*
Difficulty: Taxing

Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.

Tip: This approach is used in a simple lossless compression technique called run-length encoding.

Sample input and output
The string “aabbcc” should return “a2b2c2”.
The strings “aaabaaabaaa” should return “a3b1a3b1a3”
The string “aaAAaa” should return “a2A2a2"
 */

// Paul's Answer
func challenge13(input: String) -> String {
    
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in input {
        
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    
    // This below code is for the last set of words, because else loop won't run when there is no character left, and so we have to append it manually with the below code
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    
    return returnValue
}

challenge13(input: "aaabbcc")
