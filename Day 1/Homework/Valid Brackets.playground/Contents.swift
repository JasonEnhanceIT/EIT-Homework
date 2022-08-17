import UIKit

let input = "()[]{}"

for i in 0..<input.count
//for i in s.characters.indices[s.startIndex..<s.endIndex]
{
    switch input[i]
    {
    case "(":
        print("u")
    case "[":
        print("l")
    case "{":
        print("r")
    default:
        print("Unknown input character")
    }
}
