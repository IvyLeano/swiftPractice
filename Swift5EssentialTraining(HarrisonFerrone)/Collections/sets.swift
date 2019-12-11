// creating sets
// useful for storing unique values in an unordered collection

// must specify that it is a set, else the default is an array
// var activeQuest: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]
var activeQuests: Set<String> = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]

// inserting and removing elements
// efficient - index and key value pair references not required
activeQuests.insert("Only the strong")
activeQuests.remove("The Undertaker")

print(activeQuests)

// more common methods
activeQuests.contains("All-4-One")

// alphabetically, can also take predicates
// activeQuests.sorted() 

// sets can only store values that are hashable (can provide a hash value of themselves)
// all of swifts basic types are hashable by default

print(activeQuests)

// core set methods
var completedQuests: Set = ["Big Boss", "All-4-One", "The Hereafter"]

// set operations
// intersection returns the common values between activeQuests and completedQuests
// returns "Big Boss"
var commonQuests = activeQuests.intersection(completedQuests)

// opposite of intersection - returns all values that are not shared
var differentQuests = activeQuests.symmetricDifference(completedQuests)

// creates a new set of all values in both sets
var allQuests = activeQuests.union(completedQuests)

// subtracting a set
var clippedQuests = activeQuests.subtracting(completedQuests)


// Note: 
// to dynamically perform the above operations, directly on a set, use:
// formUnion, formSymmetricDifference and subtractingMethods


print(completedQuests)
print(differentQuests)
print(activeQuests)