import UIKit


// MARK:- Does one string contains another
//Simple version of .contains() methos in Swift

/*
    The range(of:) method returns the position of one string inside another. As it’s possible the substring might not exist in the other, the return value is optional. This is perfect for us: if we call range(of:) and get back nil, it means the substring isn’t contained inside the check string.
 */

extension String {
    
    func fuzzyContains(_ inputString: String) -> Bool {
        return self.uppercased().range(of: inputString.uppercased()) != nil
    }
}

//extension String {
//    func fuzzyContains(_ string: String) -> Bool {
//        return range(of: string, options: .caseInsensitive) != nil
//    }
//}


"Hello".fuzzyContains("Hello,world")
