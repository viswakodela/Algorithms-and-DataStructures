
import UIKit

/*
Challenge 18: Recreate the pow() function
Difficulty: Easy

Create a function that accepts positive two integers, and raises the first to the power of the second.

Tip: If you name your function myPow() or challenge18(), you’ll be able to use the built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.

Sample input and output
The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.
*/

// My Answer
func challange18(number: Int, power: Int) -> Int {
    
    guard number > 0 else {return 0}
    
    var returnValue: Int = 1
    for _ in 1...power {
        returnValue = returnValue * number
    }
    return returnValue
}

challange18(number: 5, power: 2)

// Paul's Answer
func challenge18b(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number }
    
    return number * challenge18b(number: number, power: power - 1)
}
