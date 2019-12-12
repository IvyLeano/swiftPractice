// REVIEW THIS TOPIC

// protocols can't store values but must have getter and setter methods

// declaring a protocol
protocol Collectable {
    var name: String { get }
    var price: Int { get set }

    init(withName: String, startingPrice: Int)
    func collect() -> Bool
}

 protocol Usable {
    func use()
}

// protocol adoption
class Item: Collectable, Usable {
    var name: String
    var price: Int
    required init(withName: String, startingPrice: Int) {
        self.name = withName
        self.price = startingPrice
    }
    func collect() -> Bool {
        print("Item collected!")
        return true
    }
    func use() {
        print("Item Used!")
    }
}
let potion = Item(withName: "High Potion", startingPrice: 35)
potion.collect()
potion.use()
