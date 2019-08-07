import UIKit


// MARK:- Remove Duplicates From a given String

/*
 The string “wombat” should print “wombat”.
 The string “hello” should print “helo”.
 The string “Mississippi” should print “Misp
 */

// My Answer
func challange6(inputString: String) -> String {
    
    let removedDuplicatesString = Set(Array(inputString))
    
    let array = Array(removedDuplicatesString)
    
    var returnValue = ""
    
    array.forEach { (char) in
        returnValue.append(char)
    }
    return returnValue
}


removeDuplicatesFromAString(inputString: "Wombat")


// MARK:- Pauls Answers
let string = "wombat"
let set = Set(string)
print(String(set))

func challenge6b(string: String) -> String {
    var used = [Character]()
    
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}
