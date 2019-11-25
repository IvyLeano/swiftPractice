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

//tuple: used to make a compound value - to return multiple values from a function
func calculate(x: Int, y: Int) -> (Int, Int, Int) {
    let add = x + y
    let subtract = x - y
    let divide = x / y

    return (add, subtract, divide)
}
let calc = calculate(x: 4, y: 2)
print("calc: \(calc)")

//tuple: with return names
func calculate2(x: Int, y: Int) -> (add: Int, subtract: Int, divide: Int) {
    let add = x + y
    let subtract = x - y
    let divide = x / y

    return (add, subtract, divide)
}
let calc2 = calculate2(x: 4, y: 2)
print("calc2: \(calc2)")

//nested functions
func returnFifteen() -> Int {
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

// functions are a first-class type: a function can return another function
func makeIncrement() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 5
    }
    return addOne
}

var increment = makeIncrement()
print(increment(7))

// functions can take on another function as one of its argument
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
print("Passing a function as a parameter: \(hasAnyMatches(list: numbers, condition: lessThanTen))")

// writing a closure without a name by surrounding code with braces - use key word 'in'
print(numbers.map({(number: Int) -> Int in
    let result = 3 * number
    return result
}))

// when a closure type is already known, you can omit parameter type, return type of both
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

