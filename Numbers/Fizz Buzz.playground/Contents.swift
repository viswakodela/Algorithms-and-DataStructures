

import Foundation

/*
Difficulty: Easy

Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.

Sample input and output
1 should print “1”
2 should print “2”
3 should print “Fizz”
4 should print “4”
5 should print “Buzz”
15 should print “Fizz Buzz”
*/

// My Answer
func challange16() {
    
    for number in 1...100 {
        if number % 3 == 0 && number % 5 == 0 {
            print("Fizz Buzz")
        } else if number % 3 == 0 {
            print("Fizz")
        } else if number % 5 == 0 {
            print("Buzz")
        } else {
            print(number)
        }
    }
}

challange16()

// Paul's Answer
func challenge16c() {
    (1...100).forEach {
        print($0 % 3 == 0 ? $0 % 5 == 0 ? "Fizz Buzz" : "Fizz" : $0 % 5 == 0 ? "Buzz" : "\($0)") }
}
