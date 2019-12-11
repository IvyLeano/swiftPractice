// REVIEW THIS TOPIC
// closures: act like blocks or lambda expressions

// defining closures (looks like a func parameter)
// without initialization
var closure: () -> ()
// with empty initialization
var closure2: () -> () = {}

// initializing closure
var computeBonusDamage: (Int) -> Int = {
    (base: Int) -> Int in
    return base * 4
}
// can also use the below syntax
var computeBonusDamage2 = { base in
    return base * 4
}

// call closure
// executed twice, because the function is referencing the computeBonusDamageVariable
computeBonusDamage(25)

// USING CLOSURES
var highScores = [ 3213, 345, 762]
var partyMembers = ["Harry", "Steve", "Bob"]

// existing functions with closures
var ascendingSort = highScores.sorted{ (firstValue, secondValue) -> Bool in 
    return firstValue < secondValue
}

print(ascendingSort)

// using custom closures with functions
func activeMembers(completion: ([String]) -> Void) {
    completion(partyMembers)
}
activeMembers { (members) in 
    for name in members {
        print("\(name) is active!")
}}

// overloaded
func activeMembers(members: [String]) -> () -> Void {
    var completion: () -> Void = {
        for name in members {
            print("\(name) is present!")
        }
    }
    return completion
}
var closureReturn = activeMembers(members: partyMembers)
closureReturn()


