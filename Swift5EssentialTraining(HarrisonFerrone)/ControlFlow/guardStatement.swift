// guard statement: act like gate keepers, a stricter version of if-else statement
// guard statement is more concise with how it handles failing conditions

let shopItems = ["Magic wand": 10, "Iron Helm" : 5, "Excalibur": 1000]
let currentGold = 16

// guard statement with for-in loop
for (item, price) in shopItems {
    // you can only get past this line of code if currentGold >= price
    guard currentGold >= price else {
        print("you can't afford the \(item)")
        continue // continue to the next index
    }
    print("Go ahead, the \(item) is yours for \(price) gold!")
}