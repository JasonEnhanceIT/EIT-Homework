import UIKit

let input = "()[]{}"

print(Brac())

func Brac()-> Bool
{
    let arr = Array(input)
    
    //bad solution
    var skipNext = false
    
//i object is not mutable or incrementable
    for var i in 0..<input.count
    //for i in s.characters.indices[s.startIndex..<s.endIndex]
    {
        if skipNext
        {
            continue
        }
           
        switch arr[i]
        {
        case "(":
            if arr[i+1] == ")"
            {
                //Doens't like ++
                //i += 1
                skipNext = true
                continue
            }
            else
            {
                return false
            }
        case "[":
            if arr[i+1] == "]"
            {
                //i += 1
                skipNext = true
                continue
            }
            else
            {
                return false
            }
        case "{":
            if arr[i+1] == "}"
            {
                //i += 1
                skipNext = true
                continue
            }
            else
            {
                return false
            }
        default:
            print("Unknown input character \(arr[i])")
        }
    }
    return true

}
