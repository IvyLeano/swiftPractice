// REVIEW THIS TOPIC

// declaring a protocol
protocol Collectable {
    var name: String { get }
    var price: Int { get set }

    init(withName: String, startingPrice: Int)
    func collect() -> Bool
}

extension Collectable {
    var priceIncrease: Int {
        return self.price * 10
    }
    init(name: String){
        self.init(withName: name, startingPrice: 100)
    }
    // func collect() -> Bool {
    //     print("Default item couldn't be collected...")
    //     return false
    // }
    
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

let antidote = Item(name: "Antidote")
print(antidote.price)

extension String {
    func fancyDebug() {
        print("This string has \(self.count) characters")
    }
}

antidote.name.fancyDebug()