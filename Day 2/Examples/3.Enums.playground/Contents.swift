import UIKit

//Enumerations
//An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code
// in Swift these enums are much more flexible, and don;t have to provide a value for each case of the enumeration.

enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Swift enumeration cases don't have an integer value set by default.
//In the compassPoint example abouve, north, south, east and west don't implicitly equal 0, 1 , 2, and 3, Insead, the different enumeration cases are values in their own right, with an explicitly defined type of CompassPoint
print(CompassPoint.east)

enum CompassPoint2:CaseIterable {
    case north
    case south
    case east
    case west
}
for compassPoint in CompassPoint2.allCases {
    print(compassPoint)
}

enum Planet: Int, CaseIterable {
    case mercury = 1, venus, earth, mars, jupiter, saturn
}

for planet in Planet.allCases {
    print(planet.rawValue)
}

//Init from raw value
let newPlanet = Planet(rawValue: 7)
print(newPlanet?.rawValue)

//associated values in enumerations
//Enums can store associated values for each case, for example
//we can attach additional information

enum Activity {
    case bored
    case running(description: String) //we do not know where it is running
    case talking(topic: String) // we do not know what the topic of convo is
    case singing(volume: Int)
}

//now we can be more precise, for example talking about football
let talking = Activity.talking(topic: "football")
print(talking)

switch talking {
case .bored:
    print("bored")
case .running:
    print("running")
case .talking(let topic):
    print("talking about \(topic)")
case .singing:
    print("singing")
}
