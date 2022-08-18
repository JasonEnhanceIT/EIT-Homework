import UIKit
import Foundation

//creating a protocol
protocol BinaryRepresentable {
    //define properties
    var tag:String { get set } // cannot declare using let
    var data:Data { get }
    
    //we can use the static keyword
    static var counter:Int { get }
    static func incrementCounter()
    
    //define func
    mutating func update(data:Data)-> Bool
    //Remember we need to add the keyword mutating for structs because we want to change the object itself
}

//using protocols
//Swift is a Protocol Oriented Programming Language POP vs OOP

struct TaggedDataS: BinaryRepresentable {
  
    var tag: String
    var data: Data
    
    static var counter: Int = 0
    static func incrementCounter() {
        counter += 1
    }
    
    mutating func update(data: Data) -> Bool {
        self.data = data
        return true
    }
}

//Why does the struct not need an init?
//Why does class not need the keyword mutating?

class TaggedDataC: BinaryRepresentable {
    var tag: String
    var data: Data
    
    init(tag:String, data:Data) {
        self.data = data
        self.tag = tag
    }
    
    static var counter: Int = 0
    static func incrementCounter() {
        counter += 1
    }
    
    func update(data: Data) -> Bool {
        self.data = data
        return true
    }
}
// Remember that protocols are types so we can use a type in arrays for example
var binaries = [BinaryRepresentable]()
let b1 = TaggedDataS(tag: "", data: Data(base64Encoded: "Nate")!)
let b2 = TaggedDataC(tag: "", data: Data(base64Encoded: "Also Nate")!)

binaries.append(b1)
binaries.append(b2)
