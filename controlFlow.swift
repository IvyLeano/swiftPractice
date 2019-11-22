
//variables used in this exercise
let scores = [
    "Test1": 75,
    "Test2": 20,
    "Project1": 75,
    "Project2": 50,
    "FinalExam": 40
]
let interestingNumbers = [
    "Prime": [2,3,4,5,11,13],
    "Fibinacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]
//optional value: either contains a 'value' or contains 'nil'
//nil indicates that that a value is missing
//optional values are indicated with a '?'' and can be evaluated as 'optionalVariable == nil'
var optionalName: String? = "Tony Stark"
var greeting: String

//Another way to handle optional values is to provide a default value using the '??' operator
//If the optional value is missing the default value is used
let nickName: String? = nil 
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let colour = "red"

//use if and switch to make conditionals
// 1. if statements 
if scores["FinalExam"]! < 50 {
    print("You did not pass the course")
} else {
    print("You passed the course")
}
//in an if statement, the conditional must be a boolean, you can use
//if and let together to work with values that might be missing - using optionals
if let name = optionalName {
    greeting = "Hello, \(name) !"
} else {
    greeting = "Hello! What is your name?"
}
print(greeting)
print(informalGreeting)

// 2. switch statements
// switch statements are not limited to Int or tests for equality
switch colour {
    case "red":
        print("Apples are red.")
    case "Blue":
        print("Blueberries are blue.")
    default:
        print("All colours are in a rainbow.")
}

//use for-in, while and repeat-while to make loops
// 1. for-in: to iterate over items in a dictionary(unordered collection, iteration is done in an arbitrary order)
for (type, score) in scores {
    print("\(type): \(score)%")
}
// type, number = key - value
// number in numbers = number in value array
for (type, numbers) in interestingNumbers {
    print("\(type): ")
    for number in numbers {
        print("\(number)")
    }
}

// 2. while: to repeat a block of code until a condition is met / changes
var n = 0
while n < 100 {
    n += 1
}
print("n is: \(n)")

// 3. repeat-while
var m = 0
repeat {
    m += 1
} while m < 100
print("m is: \(m)")
//Notes:
// 1. parentheses aroung the condition or loop variables are optional
// 2. braces around the body are required
// 3. using '!' after optional values, unwraps value so the 'optional' keyword is not printed
