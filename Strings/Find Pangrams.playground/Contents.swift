import UIKit


/*
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 
 Sample input and output
 The string “The quick brown fox jumps over the lazy dog” should return true.
 The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.
 */

// Pauls Answer

func challange9(inputString: String) -> Bool {
    
    let inputSet = Set(inputString.lowercased())
    
    let letters = inputSet.filter({$0 >= "a" && $0 <= "z"})
    return letters.count == 26
}


challange9(inputString: "The quick brown fox jumps over the lazy dog")
