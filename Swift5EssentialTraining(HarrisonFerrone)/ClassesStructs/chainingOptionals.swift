// REVIEW THIS TOPIC

// Optional chaining: allows you to unwrap an optional type that has optional properties of its own.
// Common in classes and structs that contain optional types.
// If all links are present and strong, the chain is unbroken. If one link fails, the chain breaks.

// test variables
struct Item {
    var description: String
    var previousOwner: Owner?
}

struct Owner {
    var name: String

    func returnOwnerInfo() -> String {
        return "\(name) is the current owner"
    }
}

var questDictionary = [
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

// creating the chain
var rareDagger = Item(description: "A unique dagger of unknown origin", previousOwner: nil)
var daggerOwner = Owner(name: "The Great Thied")
// rareDagger.previousOwner = daggerOwner
rareDagger.previousOwner?.name = "The Old Merchant"

// '?' tells compiler to return nil if previousOwner is nil, and not to bother trying to get
// the name property of something that doesn't exist.
// optional chaining is always going to return an optional.
if let owner = rareDagger.previousOwner?.name { 
    print("This item used to be owned by \(owner)")
 } else {
     print("Looks like this items history is known")
 }

 if let ownerInfo = rareDagger.previousOwner?.returnOwnerInfo(){
     print("Owner found!")
 } else {
     print("No owner in out records")
 }

 if let gemstoneObjective = questDictionary["Fetch Gemstones"]?["Objective"] {
     print(gemstoneObjective)
 }