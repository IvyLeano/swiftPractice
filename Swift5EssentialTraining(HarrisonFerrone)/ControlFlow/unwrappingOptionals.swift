var itemGathered: String? = "Diamond long sword"
var isShopOpen: Bool? = true

var blacksmithShop: [String: Int] = ["Bottle": 10, "Shield": 15, "Ocarina": 100]

var questDictionary = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secret": "Win with 50% health"
    ]
]

// optional binding
// if itemGatered is not nil, unwrap it and store it to item
if let item = itemGathered {
    // item is only available in the if statement
    print("You found a \(item)")
} else {
    print("Sorry, no item found")
}

// cases where multiple items need to be unwrapped at the same time
// the if statement is only executed if both values are not nil
// this syntax is available to 2D arrays as well
if let shopOpen = isShopOpen, let searchedItem = blacksmithShop["Shield"] {
    print("We're open, and we have \(searchedItem) in stock!")
} else {
    print("Sorry, either we're not open or don't have your item")
}

// '?' indicates value is an optional and might not exist
if let fetchGems = questDictionary["Fetch Gemstones"]?["Objective"] {
    print("Active quest object: \(fetchGems)")
} else {
    print("That quest is no longer available")
}