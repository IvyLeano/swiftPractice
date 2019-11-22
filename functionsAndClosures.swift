// functions
// func functionName(variableName: variableType, variableName: variableType) -> returnType {}
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))

// no return type
func add(x: Int, y: Int) {
    print("\(x) + \(y) = \(x + y)")
}
add(x: 4, y: 10)

//functions without argument labels use '_'
func subtract(_ x: Int, _ y: Int) -> Int {
    return x + y
}
print("3 + 5 = \(subtract(3, 5))")