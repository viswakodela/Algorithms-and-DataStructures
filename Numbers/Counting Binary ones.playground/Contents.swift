
/*
 Difficulty: Tricky
 
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
 
 Sample input and output
 The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
 The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
 */


import UIKit

func challange21(number: Int) -> (nextHeighest: Int?, nextLowest: Int?) {
    
    func ones(in number: Int) -> Int {
        let targetBinary = String(number, radix: 2)
        return targetBinary.filter { (char) -> Bool in char == "1" }.count
    }
    
    var nextHeighest: Int?
    var nextLowest: Int?
    let targetOnes = ones(in: number)
    
    for i in number+1...Int.max {
        if ones(in: i) == targetOnes {
            nextHeighest = i
            break
        }
    }
    
    for i in (0..<number).reversed() {
        if ones(in: i) == targetOnes {
            nextLowest = i
            break
        }
    }
    
    return (nextHeighest, nextLowest)
}

challange21(number: 12)
