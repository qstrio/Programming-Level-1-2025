// Introduction to Optionals

// Task 1: Declaring Optionals
// Step 1: Declare an optional String named "favoriteMovie"
var favouriteMovie: String?

// Step 2: Print "favoriteMovie" to see what happens when it has no value
print(favouriteMovie)

// Step 3: Assign a value to "favoriteMovie" and print it again

favouriteMovie = "Inception"
print("Favourite Movie: \(favouriteMovie)")
// Task 2: Unwrapping Optionals with if let

// Step 1: Using if let to safely unwrap "favoriteMovie" and print it
if let unwrappedMovie = favouriteMovie {
    print("My favourite movie is \(unwrappedMovie)")
} else{
    print("I don't have a favourite movie.")
}

// Step 2: Set "favoriteMovie" to nil and try unwrapping it again
favouriteMovie = nil
if let unwrappedMovie = favouriteMovie {
    print("My favourite movie is \(unwrappedMovie)")
} else{
    print("I don't have a favourite movie.")
}

// Task 3: Using Guard to Unwrap Optionals

// Step 1: Write a function that takes an optional String (name) and prints a welcome message
func welcomeMessage(name: String?){
    guard let unwrappedName = name else{
        print("Hello, guest!")
        return
    }
    print("Hello, \(unwrappedName)!")
}

// Test the function with a name

welcomeMessage(name: "Irene")


// Test the function with nil
welcomeMessage(name: nil)

// Task 4: Optional Chaining

// Step 1: Create a struct called "Book" with a title (String) and author (String?)

struct Book {
    var title: String
    var author: String?
}


// Step 2: Declare an instance of "Book" with a title and an author
let myBook = Book(title: "Don Quixote", author: "Miguel de Cervantes")

// Step 3: Print the author's name using optional chaining
if let authorName = myBook.author{
    print("Author: \(authorName)")
} else {
    print("Author information is missing.")
}

// Step 4: Declare another instance of "Book" without an author and print author name

let anonymousBook = Book(title: "Barbie Horse Adventures", author: nil)

if let authorName = anonymousBook.author{
    print("Author: \(authorName)")
} else {
    print("Author information is missing.")
}


