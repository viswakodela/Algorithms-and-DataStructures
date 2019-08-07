import UIKit


// MARK:- Condense Whitespace

/*
 Ex: The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
 The string “[space][space][space][space]a” should return “[space]a”.
 The string “abc” should return “abc”.
 */

// My Answer

func challange7(inputString: String) -> String {
    
    var returnString = ""
    
    for str in inputString {
        if str != " " {
            returnString.append(str)
        }
    }
    return returnString
}

challange7(inputString: "Pau l ")


// MARK:- Pauls Answer
func challenge7a(input: String) -> String {
    let components = input.components(separatedBy: .whitespacesAndNewlines)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

func challenge7b(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}
