// 1.
class Item {
    var name: String
    var price: Double

    // 4. 
    var secret: BonusEffect?

    // 2.
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

// 3.
struct BonusEffect {
    var bonus: Int 
}

// 5.
class Inventory {
    var sortedItems: [Item]

    // 6.
    init(item: [Item]){
        self.sortedItems = item
    }
}

// 7.

var bonusEffect = BonusEffect(bonus: 20)
var item = Item(name: "shampoo", price: 6.80)
var item2 = Item(name: "shampoo2", price: 6.80)
item.secret = bonusEffect

// 8.
var inventory = Inventory(item: [item, item2])
if let itemPower = inventory.sortedItems[0].secret?.bonus {
    print("Healing potion has a bonus effect of \(itemPower)")
} else {
    print("The item queried has no secret effect... ")
}


