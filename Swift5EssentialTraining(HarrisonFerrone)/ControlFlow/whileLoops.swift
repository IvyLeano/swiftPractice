// while loops: executes while a defined condition is true
var playerHealth = 5

// type 1: traditional while loops
while playerHealth > 0 {
    // you have to manually decrement expression variable to preven infinite loop
    playerHealth -= 1
    print("Still Kicking!")
}

// type 2: repeat - while loops 
playerHealth = 5 // reset player health
repeat {
    playerHealth -= 1
    print("HP at \(playerHealth)")
} while playerHealth > 0

