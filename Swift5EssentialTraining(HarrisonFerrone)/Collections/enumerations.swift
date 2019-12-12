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