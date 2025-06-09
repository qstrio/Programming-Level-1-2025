// MARK: - Welcome to Classes & Enums
// Let's explore the basics of Swift classes and enums!
// Follow along with the tasks below and modify the code to see how it works.

// MARK: - Classes

// Example: A simple Car class
class Car {
    var make: String
    var model: String
    var year: Int

    // Initializer to set up the car
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }

    // Method to describe the car
    func description() -> String {
        return "\(year) \(make) \(model)"
    }
}

var carOne: Car = Car(make: "Mazda", model: "3", year: 2014)
var carTwo: Car = Car(make: "Toyota", model: "Trueno APEX", year: 1987)

print(carOne.description())
print(carTwo.description())

// TASK 1: Create a Person class
// TODO: Create a class called "Person" with:
// - Properties: name (String), age (Int)
// - A method called "greet()" that prints "Hello, my name is [name]."

// Uncomment below and complete!

class Person {
 // Add properties and methods here
    var name: String
    var age: Int
    var weather: Weather
    
    init(name: String, age: Int, weather: Weather){
        self.name = name
        self.age = age
        self.weather = weather
    }
    
    func greet() -> String {
        return "Hello, my name is \(name) and I am \(age) years old."
    }
    
    func weatherAdvice() -> String {
        switch weather {
        case .sunny:
            return("It's a nice day outside. You should put on sunscreen!")
        case.cloudy:
            return("It's not bad outide, but you should bring an umbrella just in case!")
        case.rainy:
            return("It's pouring outside. You should bring an umbrella or stay inside!")
        case.stormy:
            return("It's storming! You should definitely stay inside!")
            
        }
    }
}

var personOne: Person = Person(name: "Mr. Mergens", age: 872, weather: .cloudy)
print(personOne.greet())
print(personOne.weatherAdvice())

// MARK: - Enums

// Example: Direction enum
enum Direction {
    case north
    case south
    case east
    case west
}

// Use an enum instance
let currentDirection = Direction.north
print("We are heading \(currentDirection).")

// TASK 2: Create a Weather enum
// TODO: Define an enum called "Weather" with cases:
// - sunny, rainy, cloudy, stormy
// Write a function that gives advice based on the weather using a switch statement.

// Uncomment below and complete!
enum Weather {
 // Add cases here
    case sunny
    case rainy
    case cloudy
    case stormy
}

var weatherAdvice: Weather = .cloudy

switch weatherAdvice {
case .sunny:
    print("It's a nice day outside. You should put on sunscreen!")
case.cloudy:
    print("It's not bad outide, but you should bring an umbrella just in case!")
case.rainy:
    print("It's pouring outside. You should bring an umbrella or stay inside!")
case.stormy:
    print("It's storming! You should definitely stay inside!")
    
}

// MARK: - Combining Classes & Enums

// Example: Using enums in a class
class Journey {
    var destination: String
    var direction: Direction

    init(destination: String, direction: Direction) {
        self.destination = destination
        self.direction = direction
    }

    func journeyDetails() -> String {
        return "Heading \(direction) to \(destination)."
    }
}

// TASK 3: Combine Person and Weather
// TODO: Add a method to "Person" that suggests an activity based on the weather.
// Use the "Weather" enum as a parameter.

// MARK: - Advanced: Inheritance

// Example: Subclassing a class
class ElectricCar: Car {
    var batteryLife: Int

    init(make: String, model: String, year: Int, batteryLife: Int) {
        self.batteryLife = batteryLife
        super.init(make: make, model: model, year: year)
    }

    override func description() -> String {
        return "\(super.description()) with \(batteryLife)% battery life."
    }
}

// TASK 4: Create a subclass of Person
// TODO: Subclass "Person" to create "Student":
// - Add a property called "grade".
// - Override the "greet()" method to include the grade in the greeting.

class Student: Person {
    var grade: String
    
    init(name: String, age: Int, weather: Weather, grade: String){
        self.grade = grade
        super.init(name: name, age: age, weather: weather)
    }
    
    override func greet() -> String {
        return "Hello, my name is \(name), I am \(age) years old, and my grade is \(grade)."
    }
}

let studentOne: Person = Student(name: "Mr. Allan", age: 527, weather: .rainy, grade: "A")
print(studentOne.greet())
