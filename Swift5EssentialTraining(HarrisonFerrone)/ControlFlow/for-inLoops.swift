// for-in loops: used to iterate, or loop through sequences (arrays, dictionaries, ranges, string characters)
let playerGreeting = "Hello fello Hunter!"
let armorTypes = ["Heavy Plate", "Hunters Gear", "Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

// strings and arrays
for character in playerGreeting {
    print(character)
}

for armor in armorTypes {
    print(armor)
}

// dictionary key value pairs
for weaponKey in weapons.keys {
    print(weaponKey)
}

for weaponValue in weapons.values {
    print(weaponValue)
}

for (weapon, value) in weapons {
    print("\(weapon): \(value)")
}

// using ranges

// 1. closed range - 1 through 10 (inclusive)
for index in 1...10 {
    print(index)
}

// 2. one sided ranges
// for every armor in armorTypes starting at 0 until end
for armor in armorTypes[0...] {
    print(armor)
}

// 3. a half open range - the last value is left out
// prints 1 - 10 (10 is left out)
for indexNumber in 1..<10 {
    print(indexNumber)
}

// can cause out of range exception, use the below example instead
for armor in armorTypes[..<2] {
    print(armor)
}

for armor in armorTypes[..<armorTypes.count] {
    print(armor)
}