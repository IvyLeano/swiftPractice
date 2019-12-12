// REVIEW THIS TOPIC

// enums: allow you to put related values into a custom type.
// each value is a different case.

// declaring an enum
enum GameState {
    case Completed
    case Initializing
    case LoadingData
}

// abbreviated version
enum GameState2 { case Completed, Initializing, LoadingData }

// storing and switching on an enum value
var currentState = GameState.Completed
print("Current state is \(currentState)")

// switch cases with enum don't require a default value, since values are limited
switch currentState {
    case .Completed:
        print("Completed")
    case .Initializing:
        print("Still initializing data")
    case .LoadingData:
        print("Loading data")
    // use default to prevent possible errors
    // @unknown default:
    //     print("Unknown game state detected")
}

// RAW AND ASSOCIATED VALUES

// raw values
enum NonPlayableCharacters: String {
    case Villager = "Common, not much useful info there"
    case BlackSmith = "One per village, will have quest information"
    case Merchant = "No limit per village, will make you cool stuff"
}
var BlackSmith = NonPlayableCharacters.BlackSmith
print(BlackSmith.rawValue)

// associated values
enum PlayerState {
    case Alive
    case KO(level: Int)
    case Unknown(debugError: String)

    func evaluateCase() {
        switch self {
            case .Alive:
                print("Still Kicking")
            case .KO(let restartLevel):
                print("Sorry, back to level \(restartLevel) for you...")
            case .Unknown(let message):
                print(message)
            default:
                print("Unknown state encountered...")
        }
    }
}
PlayerState.KO(level: 1).evaluateCase()
