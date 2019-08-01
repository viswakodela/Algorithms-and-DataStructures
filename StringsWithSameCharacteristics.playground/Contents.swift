import UIKit

// MARK:- Strings with same characteristics
/*
 The strings “abc” and “Abc” should return false.
 The strings “abc” and “cbAa” should return false.
 The strings “abcc” and “abca” should return false.
 */

func challange3(string1: String, string2: String) -> Bool {
    var tempararyString = string1
    
    for char in string2 {
        if let index = tempararyString.index(of: char) {
            tempararyString.remove(at: index)
        } else {
            return false
        }
    }
    return tempararyString.count == 0
}

challange3(string1: "Hello", string2: "Ollah")
challange3(string1: "viswa", string2: "asiwv")
