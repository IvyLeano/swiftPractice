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