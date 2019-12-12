class Adventurer {
    var name: String
    let maxHealth: Int

    var specialMove: String?

    // designated init
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
    }

    // you can overloaded init()'s but they will need to call the designated init
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    func printStats() {
        print("Character: \(self.name), Max Health: \(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
var player2 = Adventurer(name: "Steven")
var defaultPlayer = player1

// changing player1 or default player changes the same item since classes are passes by reference (the original value)
defaultPlayer.name = "Bob the noob"
player1.name = "Harrision"

player1.player1()
player2.player1()

