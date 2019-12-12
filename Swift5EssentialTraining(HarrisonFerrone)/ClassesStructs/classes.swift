class Adventurer {
    var name: String
    let maxHealth: Int

    var specialMove: String?

// ACCESSING MODIFIERS AND PROPERTIES

// There are 4 types of modifiers:
// 1. public: freely accessed from inside their source file and any separate module that imports the parent module.
// 2. internal: accessed by any source file, within their defining module, but no where else. 
//    Every entity in Swift are set as internal by default.
// 3. file private: can only be accessed inside theor defining module.
// 4. private: can only be accessed inside their designated scope (their class).

// There are 2 types of properties:

// 1. Read only property:
var healthLost: Int {
    return maxHealth - health
}
// 2. Read write property:
fileprivate var health: Int
var Health: Int {
    get { return health }
    set {
        if newValue <= 100 {
            health = newValue
        }
    }
}

// There are 2 type properties:

// 1. Static: cannot be overrided in a subclass
static var maxActivePlayers = 10 

// 2. class: can only be computed and are overridable from subclasses
class var credo: String {
    return "Defend the helpless"
}

    // designated init
    init(name: String, maxHP: Int) {
        self.name = name
        self.maxHealth = maxHP
        self.health = 100
    }

    // you can overloaded init()'s but they will need to call the designated init
    convenience init(name: String) {
        self.init(name: name, maxHP: 100)
    }
    func printStats() {
        print("Character: \(self.name), Max Health: \(self.health)/\(self.maxHealth)")
    }
}

var player1 = Adventurer(name: "Harrison", maxHP: 99)
var player2 = Adventurer(name: "Steven")
var defaultPlayer = player1

// changing player1 or default player changes the same item since classes are passes by reference (the original value)
defaultPlayer.name = "Bob the noob"
player1.name = "Harrision"

player1.printStats()
player2.printStats()

// useful when you want to store values that are global to a class or struct
print(Adventurer.credo)
print(Adventurer.maxActivePlayers)

// SUBCLASSES
class Ranger: Adventurer {
    var classAdvantage: String 

    // always include a designated init
    init(name: String, advantage: String) {
        self.classAdvantage = advantage
        // super references parent class
        super.init(name: name, maxHP: 150)
    }

    // overriding
    override class var credo: String {
        return "To the King!"
    }
    override func printStats() {
        print("\(self.name): Ranger, Advantage: \(self.classAdvantage)")
    }
}
var aragorn = Ranger(name: "Aragorn", advantage: "Stealth")
aragorn.printStats()







