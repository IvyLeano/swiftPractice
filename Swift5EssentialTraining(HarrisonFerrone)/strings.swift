// String: a collection of characters strung together that can be manipulated, mutated and accessed 
// declaring strings
var active: String = ""                             // assigning an empty value
var active2: String = "Retrieving the cart!"        // assigning a value or literal (in this case a string literal)

// concatenation
var difficulty = "Nightmare"
var questInfo = active2 +  " -> " + difficulty     // appends string
questInfo += "!!!"                                 // compound operator
print(questInfo)

// String interpolation: string literal that has other values inserted into it
let questInfo_interpolated = "\(active2) the difficulty level is \(difficulty)"

// retrieving string data
print(active2.count)
print(active2.isEmpty)
print(active2.contains("g"))
print(active2.contains("G"))

// append(works like +=) and insert(inserts at a specific index)
active2.append(contentsOf: " The cart is full!")
print(active2)

// remove and split - the methods below work with the original string literal
active2.removeLast()
print(active2)
active2.removeFirst()
print(active2)
// active2.removeAll()

active2.split(separator: "g")
print(active2)

