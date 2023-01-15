//
//  main.swift
//  SwiftPractice
//
//  Created by Jennifer Umoke on 14/01/2023.
//

import Foundation

print("Hello, World!")

// assigning constants and variables
let isholas_Wife = "Jennifer"
var pet_name = "baby"

// impliit and explicit values
let explicitNumber: Float = 4
print(explicitNumber)

let label = "The width is "
let width = 38
let widthLabel = label + String(width)
print(widthLabel)

// including values in strings: simpler method
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(fruitSummary)


// creating arrays and dictionaries
var fruits =  ["strawberries", "limes",
"tangerines"]
print(fruits[1])

var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic"]
occupations["Jennifer"] = "Founder"
print(occupations)

// creating an empty array or dictionary
var emptyArray: [String] = [] //explicit types
let emptyDictionary: [String: Float] = [:] //explicit types

emptyArray.append("one")
print(emptyArray)

//implicit types
fruits = []
occupations = [:]

// Control Flow
// if & switch for conditionals
// for-in, while and repeat-while for loops
// () optional, {} required
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// using optionals
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "J"
var greeting = "Hello!"
if let name = optionalName{
    greeting = "Hello, \(name)"
}
else {
    greeting = "Hi, stranger."
}
print(greeting)

// assigning default values with ??
let nickname: String? = "Ishola mi"
let fullName: String = "John Olafenwa"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

// using a shorter spelling to unwrap a value
if let nickname {
    print("Hey, \(nickname)")
}

// using switches
let vegetable = "hot pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
    // let can be used in a pattern to assign the value that matched the patten to a constant.
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

// using for - in
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
for (Prime, values) in interestingNumbers {
    for value in values {
        if value > largest {
            largest = value
        }
    }
}
print(largest)

// using while keyword
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
            for i in 0..<6 {
    total += i
}
print(total)


//Functions and Closures
// Use func to declare a function. Call a function by following its name with a list of arguments in parantheses. Use -> to separate the parameter names and types from the function's return type.

func greet(person: String, lunch: String) -> String {
    return "Hello \(person), we're having \(lunch) for lunch today."
}

var my_greeting = greet(person: "John", lunch: "catfish soup")
print(my_greeting)

// writing custom argument labels for functions. Write _ to use no argument label.

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

var greet_John = greet("John", on: "Saturday")

print(greet_John)

// using tuples to make compound values, eg return multiple values from a function. Elements of a tuple can be referred to either by name or by number.

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
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

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)

// Using nested functions
// These are used to organise code that's long or complex
func returnFifteen() -> Int {
    var y = 10
    func add () {
        y += 5
    }
    add()
    return y
}
var my_func = returnFifteen()
print(my_func)

// Creating a function that returns another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var my_func_2 = makeIncrementer()
print(my_func_2(7))

// Creating a function that takes another function as one of its arguments

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
var func_1 = hasAnyMatches(list: numbers, condition: lessThanTen)
print(func_1)

// functions are a special kind of closures (blocks of code that can be called later). Write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.

 numbers.map({ (number:Int) -> Int in
    let result = 3 * number
    return result
    })

func printer(number: Int){
    print(number * 2)
}

numbers.map(printer)

func printString(val: String){
    print(val)
}

var string_arr = ["John", "Jennifer", "Ayoola"]

string_arr.map(printString)

string_arr.map({
    (val: String) in
    print(val)
})

var a1 = string_arr.map({
    (val: String) -> Int in
    let length = val.count
    
    return length
})

print(a1)

var mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

// OBJECTS AND CLASSES
// writing a class
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
