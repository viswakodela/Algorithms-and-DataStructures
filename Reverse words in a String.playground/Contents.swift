

import Foundation

/*
Challenge 15: Reverse the words in a string
Difficulty: Taxing

Write a function that returns a string with each of its words reversed but in the original order, without using a loop.

Sample input and output
The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.
The string “The quick brown fox” should return “ehT kciuq nworb xof”.
 */

// My Answer for reversing the whole string, But it is not the answer for the question
func challange15(inputstring: String) -> String {
    
    let inputStringArray = Array(inputstring)
    
    var count = inputStringArray.count - 1
    var returnString = ""
    
    while count >= 0 {
        returnString.append(inputStringArray[count])
        count -= 1
    }
    return returnString
}

challange15(inputstring: "Hello Viswajith")

// Another try by me
func challange15a(inputString: String) -> String {
    
    var returnString = ""
    
    let parts = inputString.components(separatedBy: " ")
    print(parts)
    
    for part in parts {
        let word = Array(part)
        var index = word.count - 1
        while index >= 0 {
            returnString.append(word[index])
            index -= 1
        }
        returnString.append(" ")
    }
    return returnString
}

challange15a(inputString: "The quick brown fox")

// Paul's Answer
func challenge15b(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map { String($0.reversed()) }
    return reversed.joined(separator: " ")
}

challenge15b(input: "The quick brown fox")
