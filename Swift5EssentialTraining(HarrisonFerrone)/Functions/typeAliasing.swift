// REVIEW TOPIC
var partyMembers = ["Harry", "Steve", "Bob"]

// type alias as a return value
typealias AttackTuple = (name: String, damage: Int, rechargeable: Bool)

// alias can be used as a variable type
var sunStrikes: AttackTuple = ("Sun strike", 45, false)

// alias can be used as a parameter and return type
func levelUpAttack(baseAttack: AttackTuple) -> AttackTuple {
    let increasedAttack: AttackTuple = (baseAttack.name, baseAttack.damage + 10, true)
    return increasedAttack
}
var poweredAttack = levelUpAttack(baseAttack: sunStrikes)

// type aleas as a function parameter
typealias ArrayClosure = ([String]) -> Void

// can also use the below syntax
func activeMembers(completion: ([String]) -> Void) {
    completion(partyMembers)
}

func activeMembers2(completion: ArrayClosure) {
    completion(partyMembers)
}

activeMembers { (members) in 
    for name in members {
        print("\(name) is active")
    }}