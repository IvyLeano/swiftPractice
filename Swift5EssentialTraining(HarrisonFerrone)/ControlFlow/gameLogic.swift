// 1.
var lefthandWeapon: String? = "Sword"
var righthandWeapon: String? = "Hand Knife"

// 2. REVIEW THIS TOPIC
if let leftWeapon = lefthandWeapon, let rightWeapon = righthandWeapon {
    print("Looks like your \(leftWeapon) and \(rightWeapon) are an even match for me!")
} else("I didn't bring enough hardware for this")

// 3.
var playerExp: [String, Int] = ["Strength": 80, "Defense": 40, "Power": 20]

// 4.
for (key, value) in playerExp {
    // 5.
    guard value >= 1 else {
        print("Player experience is below 1")
        continue
    }
    // 6.
    switch value {
        case 32:
            print("Value is 32")
        case 200...500:
            print("Value is between 200 and 500")
        case (let exp where value > 500):
            print("Value is \(exp)")
        default:
            print("Corrupted data!")
    } 
}


