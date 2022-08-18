import UIKit

let strs = ["flower", "flow", "flight"]
//let strs = ["dog", "racecar", "car"]

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

print("Prefix in common:\(Prefix(strs[0], strs[1], strs[2]))")

func Prefix(_ string1:String, _ string2:String, _ string3:String)-> String
{
    let common = PrefixHelper(string1, string2)
    let prefix = PrefixHelper(common, string3)
    
    return prefix

}

func PrefixHelper(_ string1:String, _ string2:String)-> String
{
    var prefix = ""
    var stringShort = ""
    var stringLong = ""
    
    //string 1 can be shorter
    if string1.count < string2.count
    {
        stringShort = string1
        stringLong = string2
    }
    else
    {
        stringLong = string1
        stringShort = string2
    }

    for i in 0..<stringShort.count
    {
            if stringShort[i]  == stringLong[i]
            {
                prefix = prefix + stringShort[i]
                //prefix = prefix.append(strs[i])
            }
            else
            {
                break
            }
    }
    return prefix
}
