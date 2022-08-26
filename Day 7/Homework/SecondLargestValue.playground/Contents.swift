import UIKit

let input = [1, 2, 3, 4, 5, 5]

print(secondLargestValue(inputArr:input))

func secondLargestValue(inputArr:[Int]) -> Int?
{
    if inputArr.count < 2{
        return nil
    }
    var largest = Int.min
    var second = Int.min
    
    //itter array
    for val in inputArr{
        //check if there is a value larger
        //than current and shift down
        if val > largest{
            second = largest
            largest = val
        }
    }
    
    return second
}
