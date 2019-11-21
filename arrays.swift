//array examples and syntax
var shoppingList = ["catfish", "water", "tulips"]
var numbers = [1, 2, 3, 4, 5, 6]
var occupations = [ // key:value pairs
    "Malcom":"Captain",
    "Kaylee":"Mechanic"
]
var emptyDoubles: [Double] = [ 1.7, 1.2, 1.7 ]
var counts = Array(repeating: 1, count: 5)
var array: Array<Float> = Array()

//Adding and removing elements

//Accessing arrays
//Output
print("shoppingList[0] is \(shoppingList[0]).")
print("shoppingList is \(shoppingList)")
print(numbers)
    //print(occupations["Malcom"])
print(emptyDoubles)
print(counts)

//Formatted printing of Arrays

//Array properties

//Notes:
// 1. Commas are allowed after last element
// 2. Trying to access occupations[0], for the key:value pair, would throw an error