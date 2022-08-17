import UIKit

// Simple Values

let myConstant = 38 //camelCase

//myConstant = 50
//does not work!

var myVariable = 50
myVariable = 44

let myName = "Nathaniel"
let myLastName = "Payne"
var myAge = 400

// hellow world!
let greeting:String = "Hello world!"
print(greeting)

//string interpolation
let completeName = myName + " " + myLastName
print(completeName)

let completeName2 = "My name is: \(myName) \(myLastName) of the clan \(myLastName), I was born in the highlands of Scotland: \(myAge) yrs ago. In the end there can be only one."
print(completeName2)

let constant2:String
constant2 = "test"

//Simple values are
// Int
// Double
// Float
// String

//
// Optionals
// Swift is strongly typed as a language. That means that all values are defined at compile time.
//All values always need to get a tyoe if storage and optionals can have 2 types: a nil storeage of the type itself or value
let example: String? //always initializes with nil
let age = "400"
let ageConvertedToInt = Int(age)
print(ageConvertedToInt)

//to print the value itself we can "force unwrap" using !
print(ageConvertedToInt!)
// we can use it if we are sure that this optional has a value!

//optional binding. - when you use an if to validate an optional and then use it in curly braces
if let newAge = ageConvertedToInt {
    let year = 2022 - newAge
    print(year)
} else {
    print("could not convert age")
}

// optional chaining -
func generateGreeting(to value: String?) -> String? {
    var greeting = value
    greeting?.append(" Hello world!")
    return greeting
}
var optionalValue: String?
print(generateGreeting(to: optionalValue) ?? " ")

//Double
let double1: Double = 12.5 // Double = Float64
let double2 = 1_000.5
print(double2)

let double3: Float16 = 5.0

let implicitInt = 36
let explicitInt: Double = 36

// Collection Types
// Arrays
// Dictionaries
// Sets

let ages = [36, 22, 20, 25]

let ages2: [Int]
ages2 = [33, 36, 22, 25, 31, 33, 22]

let ages3 = [Int]()
let ages4: [Int] = []
let ages5 = Array<Int>()

print(ages3)
print(ages4)

let set1 = Set(ages2)
print(ages2)
print(set1)

//dictionaries
var dictionary1 = Dictionary<String, String>()
let dictionary2: [String : String] = [:]
let dictionary3 = [String:String]()

dictionary1["name"] = "Nate"

//access element in a collection
//arrays use index
print(ages2[5])
print(dictionary1["name"])
print(Array(set1)[0])

//we can also create typealiases
typealias SampleDouble = Int
let newInt = SampleDouble.max
print(newInt)
