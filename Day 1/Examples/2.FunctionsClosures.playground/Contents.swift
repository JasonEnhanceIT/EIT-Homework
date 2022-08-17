import UIKit

//Functions & Closures

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Adeel", day: "Wednesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet("Bob", on: "Friday")

// Tuple
//Use a tuple to make compound values, for example to return multiple values from a function

let tuple1 = (404, "Not Found")
//this tuple describes an HTTP status code

let tuple2 = (code: 404, message: "Not Found")
print(tuple2.code)

func calculateStatiscics(scores: [Int])-> (min:Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let statistics = calculateStatiscics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

// closure
// anonymous functions, it means that they have no name
// closure could be a type of storage for values, meaning that closures can be saved in vars or constants

// Closures are a function type!
// Closures are a reference type!
// Closures come in different forms
// Escaping annotation: since the closure is a referency type we need to use the keyword @escaping if we want to execute the closure outside the method

func fetchFromAPI(with url: String, completion: @escaping (Int)->Void) {
    //fetch
    //get the json
    //mapping to model
    completion(200)
}

fetchFromAPI(with: "https://enhanceit.com", completion: { code in
    print(code)
})

fetchFromAPI(with: "https://enhanceit.com") { code in
    print(code)
}

// there are closures when we use arrays
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// sort
let nameSorted1 = names.sorted { name1, name2 in
    return name1 < name2
}
print(nameSorted1)

let nameSorted2 = names.sorted(by: { return $0 < $1 })
print(nameSorted2)

let nameSorted3 = names.sorted { $0 < $1 }
print(nameSorted3)
