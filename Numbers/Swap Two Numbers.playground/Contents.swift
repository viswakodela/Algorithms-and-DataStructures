
import UIKit
/*
Difficulty: Easy

Swap two positive variable integers, a and b, without using a temporary variable.

Sample input and output
Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.

*/

// My Answer, however i found this solution in Pro Swift by Paul Hudson
var a = 10
var b = 20

(a,b) = (b,a)

print(a, b)
