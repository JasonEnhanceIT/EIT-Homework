//
//  Stack.swift
//  Calculator Homework
//
//  From 7.Generic.playground
// modified with peek and count
//

import Foundation

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    func peek() -> Element {
        return items.last!
    }
    /*func peek(idx:Int) -> Element {
        return items.index(array.endIndex, offsetBy: idx)
    }*/
    func count() -> Int {
        return items.count
    }
}
