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
