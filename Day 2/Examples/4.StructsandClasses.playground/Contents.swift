import UIKit

//has an auto init
struct Resolution {
    var width = 0 // default value
    var height = 0
}
// we need to provide an init for values
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

//create an instance of custom values
let someResolution1 = Resolution()
let someVideoMode2 = VideoMode()

//accessing
print(someResolution1.width)
print(someVideoMode2.frameRate)

//drilling into subproperties
print(someVideoMode2.resolution.height)

//assigning new values
someVideoMode2.resolution.height = 20
print(someVideoMode2.resolution.height)

//
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

print(hd)
print(cinema)

//class

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEIghty = tenEighty
alsoTenEIghty.frameRate = 30.0

print(tenEighty.frameRate)
print(alsoTenEIghty.frameRate)

//Identity Operators
// Because classes are reference types it's possible for multiple constants and variables to refer to the same single instance of a class behind the scenes

if tenEighty === alsoTenEIghty {
    print("has the same reference to the object")
}

class Person {
    var name: String
    var lastName:String
    lazy var completeName: String = {
        return "\(name) \(lastName)"
    }()
    
    init(name:String, lastName:String) {
        self.name = name
        self.lastName = lastName
    }
}

let person = Person(name: "Nate", lastName: "Payne")
print(person.completeName)

//computed properties
//these properties don't actually store a value. Instead, they provide a getter and optional setter

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var rect = Rect()
print(rect.origin.x)
print(rect.center)
rect.center = Point(x: 15.0, y: 15.0)
print(rect.origin.x)
print(rect.center)


// types Properties
// as we saw each property that we created has a corresponding instance, meaning that if we want to access the property we need to create an instance of the class/struct
//we can create properties that belong to the type itself without needing an instance of a class
//for these properties we use the static keyworkd. we can use the static keyword in a class, struct or enum

struct SomeStructure {
    static let storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 1
    }
}
print(SomeStructure.storedTypeProperty)
print(SomeStructure.computedTypeProperty)

//another keyword is 'class' to define type proerties, only used in classes
class SomeClass {
    static var storedTypeProperty = "Some value"
    static func showFullName() ->String {
        return "Nate Payne"
    }
    class var overridableComputedTypeProperty:Int {
        return 108
    }
}

print(SomeClass.storedTypeProperty)
print(SomeClass.showFullName())
print(SomeClass.overridableComputedTypeProperty)

//inheritance
class NewClass:SomeClass {
    override class var overridableComputedTypeProperty: Int {
        return 222
    }
}
// if we want to prevent inheritance we use the keyword final
print(SomeClass.overridableComputedTypeProperty)
print(NewClass.overridableComputedTypeProperty)

// the mutating keyword! This keyword is only for structs and given to the method that we want to change the state of the struct

struct Point2 {
    var x = 0.0, y = 0.0
    mutating func changePoint(x:Double, y:Double) {
        self.x = x
        self.y = y
    }
}
// remember a structure is always a copy so with the mutating keyword we are passing the reference and we can change the state

print("=====")
struct S1 {
    var age = 38
}

class C1 {
    var ageStruct = S1()
}

let c1 = C1()
var s1 = S1(age: 55)
c1.ageStruct = s1
print(c1.ageStruct.age)
s1.age = 40
print(c1.ageStruct.age)
