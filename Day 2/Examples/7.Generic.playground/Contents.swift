import UIKit
import Foundation

// Generics
// Generic code enables you to write flexible, reusable functions and types that can work with any type, subject to requirements we define.
//In Swift, Generics are one of the most powerful features.
// for example Array, Dictionary are generic types

let arrInt = Array<Int>()
let arrString = [String]()

let dict1 = Dictionary<String, Int>()

//example

struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

var intStack = IntStack()
intStack.push(2)
intStack.push(4)
print(intStack.pop())

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stack1 = Stack<Int>()
stack1.push(3)
var stack2 = Stack<String>()
stack2.push("Hola como estas?")

//We can use generics in protocols using associatedtype keyword to define the generic element

protocol StackProtocol {
    associatedtype Element
    var items: [Element] { get set }
    mutating func push(_ item:Element)
    mutating func pop() -> Element
}

//I can use an extension of this protocol to do the implementation of those methods
extension StackProtocol {
    mutating func push(_ item:Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

struct CustomClass<T>:StackProtocol {
    var items = [T]()
}
var stack3 = CustomClass<Int>()
stack3.push(5)
stack3.pop()

func countdown(num:Int) {
    let index = num
    for index in stride(from: index, to: -1, by: -1) {
        print(index)
    }
}
print(countdown(num: 10))

func countdown<T:Numeric & Strideable & Comparable>(_ num:T) {
    let n = num
    for n in stride(from: n, to: -1, by: -1) {
        if n < 1 {
            print("\(n)...\nblast off!")
        } else {
        print("\(n)...")
        }
    }
}
print(countdown(10.0))
