
//variables, implicit types - compiler infers type
var myVariable = 42
myVariable = 50

//variables, explicit types
//used when the initial value does not provide enough information
//used when there is no initial value
var myExplicitVariable: Double = 70
myExplicitVariable = 74

//constants, implicit types - compiler infers type
let myConstant = 40

//constants, explicit types
//used when the initial value does not provide enough information
//used when there is no initial value
let myExplicitConstant: Double = 30.2

//Output
print("myVariable is \(myVariable)")
print("myExplicitVariable is \(myExplicitVariable)")
print("myConstant is \(myConstant)")
print("myExplicitConstant is \(myExplicitConstant)")

//Notes:
// 1. values are never implicitly converted to another type - must do so explicity
// ex) let label = "The width is"
//     let width = 94
//     let widthLabel = label + String(width)

//Run
// myVariable is 50
// myExplicitVariable is 74.0
// myConstant is 40
// myExplicitConstant is 30.2
