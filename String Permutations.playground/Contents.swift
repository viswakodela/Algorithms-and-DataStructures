import Foundation



/*
Difficulty: Taxing

Write a function that prints all possible permutations of a given input string.

Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
    
    Sample input and output
    The string “a” should print “a”.
    The string “ab” should “ab”, “ba”.
    The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.
    The string “wombat” should print 720 permutations.
*/


// Paul's Answer
func challenge14(string: String, current: String = "") {
let length = string.count
let strArray = Array(string)

if (length == 0) {
    // there's nothing left to re-arrange; print the result
    print(current)
    print("******")
} else {
    print(current)
    
    // loop through every character
    for i in 0 ..< length {
        // get the letters before me
        let left = String(strArray[0 ..< i])
        
        // get the letters after me
        let right = String(strArray[i+1 ..< length])
        
        // put those two together and carry on
        challenge14(string: left + right, current: current + String(strArray[i]))
        }
    }
}

challenge14(string: "Viswa")
