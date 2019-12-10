// Dictionaries: collection types, but instead of holding a single values accessed by indexes, they hold key-value pairs.
// All keys need to be the same type.
// All values need to be the same type.
// Dictionary items are unordered, they are accessed with their associated keys.

// creating dictionaries [key: value] - uninitialized
var blacksmithShop: [String: Int]

// creating dictionaries [key: value] - initialized to empty 
var blacksmithShop2: [String: Int] = [:]

// creating dictionaries [key: value] - initialized
// Note: dictionaries have the isEmpty and count methods available
var blacksmithShop3: [String: Int] = ["Bottle": 10, "Shield": 15, "Ocarina": 1000]

// accessing and modifying values - subscript syntax
// this returns an optional values
var shieldPrice = blacksmithShop3["Shield"]
print(shieldPrice)

blacksmithShop3["Bottle"] = 11

// Note: if the key does not exist when trying to modify a value, the swift compiler automatically adds it
blacksmithShop3["Towel"] = 1
print(blacksmithShop3)

// listing all keys and values
// keys are not modifiable - you must completely remove it and add a new one
let allKeys1 = blacksmithShop3.keys
let allKeys = [String](blacksmithShop3.keys)
let allValues = [Int](blacksmithShop3.values)

print(allKeys1)
print(allKeys)
print(allValues)

// CORE DICTIONARY METHODS

// 1.caching and overwriting items
var playerStats: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]
var oldValue = playerStats.updateValue(30, forKey:"Attack")     // creates a new key: value pair if the referenced key does not exist

// overrides existing element with new one
// playerStats = ["Evasion": 12, "MP": 55]    

// 2. caching and removing items

// playerStats["Gold"] = nil
var removedValues = playerStats.removeValue(forKey: "Gold")

print(playerStats)
print(oldValue)

// 3. nested dictionaries

// compiler infers types in the example below
var questBoard = [
    // the value for each key is a dictionary
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secret": "Win with 50% health"
    ]
]
// uses the keys as lookups instead of indexes
// this subscript could give a nil value so we use '?'
// '?' tells compiler to break the return chain if any of the keys don't exist and immediately return a nil value
var gemstoneObjective = questBoard["Fetch Gemstones"]?["Objective"]
var gemstoneObjective2 = questBoard["Fetch Gemstones"]?["objective"]

print(gemstoneObjective)
print(gemstoneObjective2)

