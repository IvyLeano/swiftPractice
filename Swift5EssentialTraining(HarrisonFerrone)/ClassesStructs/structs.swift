// Structs are passed by value and are better suited to creating simple instances that don't need inheritance or reference capabilities

struct Level {
    let levelID: Int
    var levelObjectives: [String]

    var levelDescription: String {
        return "Level ID: \(self.levelID)"
    }

    // unlike classes, structs come with their own default init() (A.K.A memberwise initializer) that are already configured.
    // You still have the option to create customized init()
    // if you create a custom init() the default init() is no longer available

    init(id: Int, objectives: [String]) {
        self.levelID = id
        self.levelObjectives = objectives
    }

    func queryObejectives() {
        for objective in levelObjectives {
            print("\(objective)")
        }
    }
    mutating func completeObjective(index: Int) {
        levelObjectives.remove(at: index)
    }

}

var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the big boss"]
// var level1 = Level(levelID: 1, levelObjectives: String)
var level1 = Level(id: 1, objectives: objectives)

var defaultLevel = level1
level1.completeObjective(index: 0)
level1.queryObejectives()

defaultLevel.queryObejectives()