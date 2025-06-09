/*
Welcome to the Constants and Variables Lab!

In this lab, we’ll explore how to use constants and variables in Swift.

- Constants (created with `let`) are values that don’t change.
- Variables (created with `var`) are values that can change.

Let’s dive in! 🚀
*/

// Exercise 1: Declaring a constant

let birthYear: Int = 2008
print("My birthyear is \(birthYear).")


// Exercise 2: Declaring a variable
var currentAge: Int = 16
print("My current age is \(currentAge).")



// Exercise 3: Changing the value of a variable
// Imagine you’re a year older. Update `currentAge` to reflect this new age.
currentAge += 1



// Exercise 4: Trying to change a constant
// Uncomment the line below to see what happens when you try to change a constant!
// birthYear += 1
// Q: Why doesn’t this work?
//bc its a constant ofc

/*
Mini Build: Life Tracker (5 min)

Let’s build a small script that simulates tracking your age over the next few years.
1. Declare a constant for `myBirthYear`.
2. Declare a variable `currentYear` (set it to the current year).
3. Calculate your age by subtracting `myBirthYear` from `currentYear`.
4. Update `currentYear` to simulate each new year, and update your age.

Try adding print statements to track the changes.
*/

let myBirthYear: Int = 2008
var currentYear: Int = 2025

print("My current age is: \(currentYear-myBirthYear)")

currentYear += 1
print("My current age is: \(currentYear-myBirthYear)")


// Increment the year and age to simulate time passing

while currentYear < 2030 {
    currentYear += 1
    print("In \(currentYear), I will be \(currentYear-myBirthYear) years old")
}
