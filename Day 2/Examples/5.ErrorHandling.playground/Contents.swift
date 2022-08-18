import UIKit
import CoreGraphics

//Error Handling

//Swift provides first-class support for throwing, catching, propogating, and mainipulating recoverable errors at runtime.
//Remember that optionals are used to represend the absence of a value, but when an operation fails it is often useful to understand what caused the failure.


enum ReadFileError: Error {
    case permissions
    case badJson(json:String)
    case FileNotExist(name:String)
}

class ReadFile {
    var fileName:String
    init(fileName:String) {
        self.fileName = fileName
        print("init")
    }
    //if I want to propagate the error using the func I need to add the keyword 'throws'
    func readFile() throws {
        guard fileName.count > 1 else {
            throw ReadFileError.FileNotExist(name: fileName)
        }
    }
}

//test it
let readFile = ReadFile(fileName: "a")
do {
    try readFile.readFile()
} catch ReadFileError.FileNotExist(let name){
    print("Error with name \(name)")
}
