//variables used in this exercise
let scores = [
    "Test1": 75,
    "Test2": 20,
    "Project1": 75,
    "Project2": 50,
    "FinalExam": 40
]
//optional value: either contains a 'value' or contains 'nil'
//nil indicates that that a value is missing
//optional values are indicated with a '?'' and can be evaluated as 'optionalVariable == nil'
var optionalName: String? = "Tony Stark"
var greeting: String

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

// 2. switch statements

//use for-in, while and repeat-while to make loops
// 1. for-in

// 2. while

// 3. repeat-while

//Notes:
// 1. parentheses aroung the condition or loop variables are optional
// 2. braces around the body are required
