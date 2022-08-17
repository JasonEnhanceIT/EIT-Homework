import UIKit
import Security

let nums = [3,2,4], target = 9

let result = TwoSum()
print("\(result.num1) \(result.num2)")

func TwoSum()-> (num1:Int, num2:Int)
{
    for i in 0..<nums.count
    {
        for j in 0..<nums.count
        {
            if (nums[i] + nums[j]) == target && i != j
            {
                return (i,j)
            }
        }
    }
    return (-1,-1)

}
