// every function has a type, a unique signature

// function types
func computeBonusDamage(baseDamage: Int) -> Int {
    return baseDamage * 4
}

// functions as parameters
func dealDamage(baseDamage: Int, bonusDamage: (Int) -> Int) {
    let bonus = bonusDamage(baseDamage)
    print("Base Damage: \(baseDamage)\nBonus Damage: \(bonus)")
}

// passes function without '()' because we are not calling the function but treating it as a variable
dealDamage(baseDamage: 55, bonusDamage: computeBonusDamage)

