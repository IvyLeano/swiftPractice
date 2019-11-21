//array examples and syntax
var uninitializedArray: [Double]
var shoppingList = ["catfish", "water", "tulips"]
var numbers = [1, 2, 3, 4, 5, 6]
var occupations = [ // key-value pairs
    "Malcom":"Captain",
    "Kaylee":"Mechanic"
]
var emptyDictionary: [String: String] = [:]  //to declare an empty key-value pair
var emptyDoubles: [Double] = [ 1.7, 1.2, 1.7 ]
var counts = Array(repeating: 1, count: 5)
var array: Array<Float> = Array()

//Remove, Add, Update and Insert elements
shoppingList.append("roses")
shoppingList.remove(at:0)
shoppingList[0] = "salmon"
shoppingList.insert("chicken", at: 1)

occupations.removeValue(forKey:"Malcom")
occupations.updateValue("Gardener", forKey:"Tim")
occupations.updateValue("Plumber", forKey:"Kaylee")

//Accessing arrays
//Output
print("shoppingList[0] is \(shoppingList[0]).")
print("shoppingList is \(shoppingList)")
print(numbers)
print(numbers[3])
print(occupations)
print(occupations["Kaylee"])
print(occupations["Kaylee"]!)
print(emptyDictionary)
print(emptyDoubles)
print(emptyDoubles[1])
print(counts)
print(array)

//Array properties
print(array.isEmpty)
print(array.count)

//Notes:
// 1. Commas are allowed after last element
// 2. Trying to access occupations[0], for the key:value pair, would throw an error
// 3. can't use a variable before initializing it
//    ex) print(uninitializedArray)
// 4. can't access an index that is out of bounds
// from: https://developer.apple.com/documentation/swift/array