
// Task 1: Arrays

// Step 1: Create an array of fruits (Atleast 3 elements)

var fruits = ["Tomato", "Orange", "Pomegranate"]


// Step 2: Print the array

print(fruits)


// Step 3: Change the second fruit

fruits[1] = "Banana"


// Step 4: Add a new fruit

fruits.append("Watermelon")


// Step 5: Remove the first fruit

fruits.remove(at: 0)
print(fruits)


// Task 2: Dictionaries

// Step 1: Create a dictionary with names and ages (Atleast 3 elements)

var students = ["Tom": 14, "Allison": 16, "Jiana": 17]


// Step 2: Print the dictionary

print(students)


// Step 3: Add a new friend

students["Cathy"] = 15
print(students)

// Step 4: Update one friend's age

students["Tom"] = 15
print(students)

// Step 5: Remove a friend

students.removeValue(forKey: "Jiana")
print(students)




// Task 3: Sets

// Step 1: Create a set of numbers

var numbers: Set = [0, 1, 2, 3, 4]


// Step 2: Print the set
print(numbers)


// Step 3: Try to add a duplicate number
numbers.insert(1)
print(numbers)

// Step 4: Remove a number
numbers.remove(4)
print(numbers)

