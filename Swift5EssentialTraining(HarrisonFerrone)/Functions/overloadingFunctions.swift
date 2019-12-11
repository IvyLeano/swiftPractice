// overloaded functions: multiple functions with the same name; must have different function type or signature

// base function
func attackEnemy() {
    print("Executing default attack...")
}

// overloaded functions
func attackEnemy(damage: Int) {
    print("Attacking for \(damage)")
}

func attackEnemy(damage: Double, weapon: String) -> Bool {
    let attackSuccess = true
    print("Attacking enemy for \(damage) with \(weapon)")
    return attackSuccess
}

attackEnemy()
attackEnemy(damage: 34)
var enemyDefeated = attackEnemy(damage: 65.988, weapon: "Godly Glaive")