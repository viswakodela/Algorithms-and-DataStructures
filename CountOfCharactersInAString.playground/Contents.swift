import UIKit



// MARK:- Print the number of repetetions of a character

/*
 Ex: The letter “a” appears twice in “The rain in Spain”.
 The letter “i” appears four times in “Mississippi”.
 The letter “i” appears three times in “Hacking with Swift”.
 */
func challange5(input: String, count: Character) -> Int {
    
    var dictionaty = [Character : Int]()
    
    for char in input {
        if let _ = dictionaty[char] {
            dictionaty[char]! += 1
        } else {
            dictionaty[char] = 1
        }
    }
    
    for (character, charCount) in dictionaty {
        if count == character {
            return charCount
        }
    }
    return 0
}

challange5(input: "Mississippi", count: "i")


// MARK:- Pauls Answer
func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}
