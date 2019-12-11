// 1.
typealias Attack = (name: String, damage: Int)

// 2.
func attackEnemy(attack: Int) {
    print("Attack Enemy with a force of: \(attack)")
}

// 3.
func attackEnemy(attack: Attack) -> String {
    return "Attack Enemy with a force of: \(attack.damage)"
}

// 4.
attackEnemy(attack: 20)
var message = attackEnemy(attack: ("Power Slam", 55))
print(message)

// 5.
typealias AttackClosure = ([Attack]) -> Void 
let playerActions = [("Mist Bomb", 45), ("Rangers Eye", 15)]

// 6.
func fetchPlayerAttacks(closure: AttackClosure) {
    closure(playerActions)
}

// 7.
fetchPlayerAttacks { (attackOptions) in 
    for(name, damage) in attackOptions {
        print("\(name) will hit for \(damage) if cast...")
    }
}