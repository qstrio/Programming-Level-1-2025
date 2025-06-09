/*
Welcome to the Data Types Lab!

In Swift, we use different data types to store information, such as:
- **String**: Text, like "Hello, world!"
- **Int**: Whole numbers, like 42
- **Double**: Decimal numbers, like 3.14
- **Bool**: True or False values

In this lab, we’ll work with each data type and learn to choose the right one for the job.
*/


// Exercise 1: Declare a String
// TODO: Declare a constant called `greeting` with the value "Hello, Swift!"
let greeting = "Hello, Swift!"



// Exercise 2: Declare an Int
// TODO: Declare a variable called `score` and set it to a number representing a game score.
var score = 0



// Exercise 3: Declare a Double
// TODO: Declare a constant called `pi` and set it to 3.14159.
let pi = 3.14159265358979323846264338



// Exercise 4: Declare a Bool
// TODO: Declare a variable called `isGameOver` and set it to false.
var isGameOver = false


// Swift infers types, so you don’t always need to specify them.
// Uncomment the lines below to see what type Swift assigns each value.

let myNumber = 10          // Infers Int
let myDecimal = 5.75       // Infers Double
let myMessage = "Hi!"      // Infers String

// Uncomment to see the types in action:
print(type(of: myNumber))  // Should print "Int"
print(type(of: myDecimal)) // Should print "Double"
print(type(of: myMessage)) // Should print "String"


/*
Mini Build: Basic Calculator (5 min)

In this activity, you’ll perform basic arithmetic with two numbers!

Steps:
1. Create two variables, `number1` and `number2`, and set them to any Double values.
2. Add, subtract, multiply, and divide these numbers. (Hint: use +,-,*,/)
3. Print the result of each operation.

Let’s get started!
*/

// Declare your Variables

var numberx: Double = 5.89
var numbery: Double = 9.31

let firstName: String = "ToVE"
let lastName: String = "is wonderful 🥰"
print(firstName.count)
print(firstName.uppercased())
print(firstName+" "+lastName)


//Addition + :DDDDDDDDD
// :DDD
//:DD
// :) :( :) :( :D :p

func calculate (number1: Double, number2: Double) {
    print("\(number1) + \(number2) = \(number1+number2)")
    
    
    
    //Subtraction -
    print("\(number1) - \(number2) = \(number1-number2)")
    
    
    //Multiplication *
    print("\(number1) x \(number2) = \(number1*number2)")
    
    
    //Division /
    print("\(number1) / \(number2) = \(number1/number2)")
    }

calculate(number1: 2.7, number2: 55.2)
