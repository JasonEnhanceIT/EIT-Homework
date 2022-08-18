import UIKit

let strs = ["flower", "flow", "flight"]
//let strs = ["dog", "racecar", "car"]

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

print("Prefix in common:\(Prefix())")

func Prefix()-> String
{
    //prefix string to return
    var prefix = ""
    
    //alternative letter access
    //print(strs[0][strs[0].index(strs[0].startIndex, offsetBy: 3)])
    
    //letter access with extension
    //print(strs[0][0])
    
    

    var string1 = ""
    var string2 = ""
    
    //string 1 can be shorter
    if strs[0].count < strs[1].count
    {
        string1 = strs[0]
        string2 = strs[1]
    }
    else
    {
        string1 = strs[1]
        string2 = strs[0]
    }

    for i in 0..<string1.count
    {
            if string1[i]  == string2[i]
            {
                prefix = prefix + string1[i]
                //prefix = prefix.append(strs[i])
            }
            else
            {
                break
            }
    }
    
    //Compute the overlap between the 1st and second string result and the third string
    
    var prefix2 = ""
    
    //string 1 can be shorter
    //prefix should be shorter but 3 could be really short
    //can re-use strings 1 and 2 or split to helper func
    if prefix.count < strs[2].count
    {
        string1 = prefix
        string2 = strs[2]
    }
    else
    {
        string1 = prefix
        string2 = strs[2]
    }
    
    for i in 0..<string1.count
    {
            if string1[i]  == string2[i]
            {
                prefix2 = prefix2 + string1[i]
                //prefix = prefix.append(strs[i])
            }
            else
            {
                break
            }
    }
    
    
    return prefix2

}
