// optionals - tell compiler that the variable or constant is storing a value or is storing nothing.
// in swift, any variable type can hold a nil value, as long as it's declared as optional.
// optionals are useful when you need placeholders for potentially unknown values without crashing your code.

// creating optionals
var itemGathered: String? = "pickaxe"        
var isExchangeable: Bool?                // no value stored, value is 'nil'

print(itemGathered)     // does not print the string value, but the optionally wrapped "pickaxe" (needs to be unwrapped)

// unwrapping can be done 2 ways:
// 1. optional binding - First Choice!


// 2. forced unwrapping
// tells compiler that you are 100% sure that the value is not 'nil', and to
// unwrap it without checking. If the value is 'nil' the program would crash
print(itemGathered!)

