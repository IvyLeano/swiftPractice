// if statements: conditional code
// best for decision trees with 3 branching options or less

// test variables
var currentHealth = 95
var maxHealth = 100

// if statements (<, >, <=, >=, !=, ==)
if currentHealth >= maxHealth {
    print("HP is at maximum")
} else if currentHealth <= 50 {
    print("Grab some health soon")
} else {
    print("HP is between 50 and 100")
}

if currentHealth > 90 || currentHealth <= maxHealth {
    print("You're doing just fine")
}
