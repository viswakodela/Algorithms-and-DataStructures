/*
Difficulty: Tricky

Given a string in English, return a tuple containing the number of vowels and consonants.

Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.

Sample input and output
The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
The input “Mississippi” should return 4 vowels and 7 consonants.
*/


import UIKit


func challange10(inputString: String) -> (vowels: Int, consonents: Int) {
    
    var vowelCount = 0
    var consonentCount = 0
    
    let vowels = "aeiou"
    let consonents = "bcdfghjklmnpqrstvwxyz"
    
    
    inputString.lowercased().forEach { (char) in
        
        if vowels.contains(char) {
            vowelCount += 1
        } else if consonents.contains(char) {
            consonentCount += 1
        }
    }
    return (vowelCount, consonentCount)
}



challange10(inputString: "Sean Allan")
